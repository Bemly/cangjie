package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCloningAWikiFailsIssue1624DesktopdePost(): Post {
    return Post(
        "cloning-a-wiki-fails-issue-1624-desktopde",
        "Cloning a wiki fails · Issue #1624 · desktop/de...",
        "2024-02-03",
        "GitHub Issue：Cloning a wiki fails · Issue #1624 · des",
        { b =>
            h2(b, "Cloning a wiki fails · Issue #1624 · desktop/de...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/desktop/desktop/issues/1624"), "访问原始链接")
        }
    )
}
