#!/usr/bin/env python3
"""
Process stub .cj files: extract URLs, fetch content, rewrite files.
"""
import os
import re
import sys
import time
import json
import urllib.request
import urllib.error
from pathlib import Path

try:
    import trafilatura
except ImportError:
    print("ERROR: trafilatura not installed. Run: pip3 install trafilatura")
    sys.exit(1)

POSTS_DIR = Path("/Users/bemly/cangjie/src/posts")
BATCH_SIZE = 5
DELAY_SEC = 2
TIMEOUT_SEC = 15
PROGRESS_FILE = Path("/Users/bemly/cangjie/process_stubs_progress.json")


def find_stub_files():
    """Find all .cj files smaller than 500 bytes."""
    stubs = []
    for f in POSTS_DIR.glob("*.cj"):
        if f.stat().st_size < 500:
            stubs.append(f)
    return sorted(stubs)


def parse_stub(filepath):
    """Parse a stub .cj file to extract metadata and URL."""
    content = filepath.read_text(encoding="utf-8")
    
    # Extract function name
    func_match = re.search(r'public\s+func\s+(\w+)\(\)', content)
    func_name = func_match.group(1) if func_match else None
    
    # Extract Post constructor args
    # Match: Post("slug", "title", "date", "summary", { b => ... })
    post_match = re.search(
        r'return\s+Post\(\s*\n\s*"([^"]*)",\s*\n\s*"([^"]*)",\s*\n\s*"([^"]*)",\s*\n\s*"([^"]*)",',
        content, re.DOTALL
    )
    if not post_match:
        # Try single-line pattern
        post_match = re.search(
            r'return\s+Post\(\s*"([^"]*)"\s*,\s*"([^"]*)"\s*,\s*"([^"]*)"\s*,\s*"([^"]*)"',
            content
        )
    
    slug = post_match.group(1) if post_match else None
    title = post_match.group(2) if post_match else None
    date = post_match.group(3) if post_match else ""
    summary = post_match.group(4) if post_match else ""
    
    # Extract URL from attrs("href", "...")
    url_match = re.search(r'attrs\("href",\s*"([^"]*)"', content)
    url = url_match.group(1) if url_match else None
    
    return {
        "func_name": func_name,
        "slug": slug,
        "title": title,
        "date": date,
        "summary": summary,
        "url": url,
        "original_content": content,
    }


def fetch_url_content(url):
    """Fetch URL and extract text content using trafilatura."""
    try:
        # Download with custom headers
        downloaded = trafilatura.fetch_url(url)
        if downloaded is None:
            # Fallback: try with urllib
            req = urllib.request.Request(url, headers={
                'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
            })
            with urllib.request.urlopen(req, timeout=TIMEOUT_SEC) as resp:
                html = resp.read().decode('utf-8', errors='replace')
            downloaded = html
        
        if downloaded is None:
            return None
        
        # Extract main content
        text = trafilatura.extract(
            downloaded,
            include_comments=False,
            include_tables=True,
            no_fallback=False,
            favor_recall=True,
        )
        
        if not text or len(text.strip()) < 20:
            # Fallback: extract with different settings
            text = trafilatura.extract(
                downloaded,
                include_comments=False,
                include_tables=True,
                no_fallback=False,
                favor_recall=True,
                favor_precision=False,
            )
        
        return text
    except Exception as e:
        print(f"  Error fetching {url}: {e}")
        return None


def escape_cj_string(s):
    """Escape a string for use in .cj source code."""
    if not s:
        return ""
    # Replace backslashes first
    s = s.replace("\\", "\\\\")
    # Replace double quotes
    s = s.replace('"', '\\"')
    # Replace newlines
    s = s.replace("\n", "\\n")
    # Replace carriage returns
    s = s.replace("\r", "")
    # Replace tabs
    s = s.replace("\t", "    ")
    return s


def truncate_text(text, max_chars=2000):
    """Truncate text to max_chars, ending at a sentence boundary."""
    if len(text) <= max_chars:
        return text
    # Try to cut at a sentence boundary
    truncated = text[:max_chars]
    # Find last period, exclamation, or question mark
    for sep in ['。', '！', '？', '. ', '! ', '? ', '\n\n']:
        idx = truncated.rfind(sep)
        if idx > max_chars * 0.5:
            return truncated[:idx + len(sep)]
    return truncated + "..."


def generate_cj_file(meta, content_text):
    """Generate a complete .cj file from metadata and fetched content."""
    func_name = meta["func_name"] or "UnknownPost"
    slug = meta["slug"] or "unknown"
    title = meta["title"] or "Untitled"
    date = meta["date"] or ""
    summary = meta["summary"] or ""
    url = meta["url"] or ""
    
    # Process content into paragraphs
    if content_text:
        # Truncate to reasonable length
        content_text = truncate_text(content_text, 3000)
        
        # Split into paragraphs
        paragraphs = [p.strip() for p in content_text.split("\n") if p.strip()]
        
        # Build body content
        body_lines = []
        
        # Add title as h2
        body_lines.append(f'            h2(b, "{escape_cj_string(title)}")')
        
        # Add paragraphs
        for para in paragraphs:
            escaped = escape_cj_string(para)
            if escaped and len(escaped) > 2:
                body_lines.append(f'            p(b, "{escaped}")')
        
        # Add source link
        if url:
            body_lines.append(f'            p(b, "原始链接：{escape_cj_string(url)}")')
            body_lines.append(f'            a(b, attrs("href", "{escape_cj_string(url)}"), "访问原链接")')
        
        body_str = "\n".join(body_lines)
    else:
        # No content fetched, keep minimal
        body_str = f'            p(b, "此链接指向技术资源页面。")\n            a(b, attrs("href", "{escape_cj_string(url)}"), "阅读原文")'
    
    # Update summary if we have content
    if content_text and summary.startswith("技术资源:"):
        # Use first 100 chars of content as summary
        first_para = content_text.split("\n")[0][:100]
        summary = escape_cj_string(first_para)
    else:
        summary = escape_cj_string(summary)
    
    cj_content = f'''package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func {func_name}(): Post {{
    return Post(
        "{escape_cj_string(slug)}",
        "{escape_cj_string(title)}",
        "{escape_cj_string(date)}",
        "{summary}",
        {{ b =>
{body_str}
        }}
    )
}}
'''
    return cj_content


def load_progress():
    """Load progress from previous run."""
    if PROGRESS_FILE.exists():
        with open(PROGRESS_FILE, "r") as f:
            return json.load(f)
    return {"processed": [], "failed": [], "skipped": []}


def save_progress(progress):
    """Save progress to file."""
    with open(PROGRESS_FILE, "w") as f:
        json.dump(progress, f, ensure_ascii=False, indent=2)


def main():
    print("=" * 60)
    print("Processing stub .cj files")
    print("=" * 60)
    
    # Find stubs
    stubs = find_stub_files()
    print(f"\nFound {len(stubs)} stub files (< 500 bytes)")
    
    # Load progress
    progress = load_progress()
    already_processed = set(progress.get("processed", []))
    
    # Parse all stubs
    file_metas = []
    for filepath in stubs:
        if filepath.name in already_processed:
            continue
        try:
            meta = parse_stub(filepath)
            meta["filepath"] = filepath
            file_metas.append(meta)
        except Exception as e:
            print(f"  Error parsing {filepath.name}: {e}")
            progress.setdefault("failed", []).append(filepath.name)
    
    print(f"Need to process: {len(file_metas)} files (skipping {len(already_processed)} already done)")
    
    # Group by URL availability
    with_url = [m for m in file_metas if m["url"]]
    without_url = [m for m in file_metas if not m["url"]]
    
    print(f"  With URL: {len(with_url)}")
    print(f"  Without URL: {len(without_url)}")
    
    # Process files without URL - just mark as skipped
    for meta in without_url:
        filepath = meta["filepath"]
        print(f"  SKIP (no URL): {filepath.name}")
        progress.setdefault("skipped", []).append(filepath.name)
    
    # Process files with URL in batches
    total = len(with_url)
    success_count = 0
    fail_count = 0
    
    for i in range(0, total, BATCH_SIZE):
        batch = with_url[i:i + BATCH_SIZE]
        batch_num = i // BATCH_SIZE + 1
        total_batches = (total + BATCH_SIZE - 1) // BATCH_SIZE
        
        print(f"\n--- Batch {batch_num}/{total_batches} ({len(batch)} files) ---")
        
        for meta in batch:
            filepath = meta["filepath"]
            url = meta["url"]
            print(f"  [{i + with_url.index(meta) + 1}/{total}] {filepath.name}")
            print(f"    URL: {url[:80]}...")
            
            # Fetch content
            content = fetch_url_content(url)
            
            if content and len(content.strip()) > 20:
                print(f"    OK: got {len(content)} chars")
                
                # Generate new .cj file
                new_content = generate_cj_file(meta, content)
                
                # Write file
                filepath.write_text(new_content, encoding="utf-8")
                print(f"    Written: {filepath.name} ({len(new_content)} bytes)")
                
                progress.setdefault("processed", []).append(filepath.name)
                success_count += 1
            else:
                print(f"    FAIL: no content extracted, keeping stub")
                progress.setdefault("failed", []).append(filepath.name)
                fail_count += 1
            
            # Save progress after each file
            save_progress(progress)
        
        # Delay between batches
        if i + BATCH_SIZE < total:
            print(f"  Waiting {DELAY_SEC}s before next batch...")
            time.sleep(DELAY_SEC)
    
    # Summary
    print("\n" + "=" * 60)
    print("SUMMARY")
    print("=" * 60)
    print(f"Total stubs found: {len(stubs)}")
    print(f"Already processed: {len(already_processed)}")
    print(f"Successfully processed: {success_count}")
    print(f"Failed (no content): {fail_count}")
    print(f"Skipped (no URL): {len(without_url)}")
    print(f"Progress saved to: {PROGRESS_FILE}")
    
    # List failed files
    if progress.get("failed"):
        print(f"\nFailed files ({len(progress['failed'])}):")
        for name in progress["failed"]:
            print(f"  - {name}")


if __name__ == "__main__":
    main()
