package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustLanglibcRawBindingsToPlatformApisFPost(): Post {
    return Post(
        "rust-langlibc-raw-bindings-to-platform-apis-f",
        "rust-lang/libc: Raw bindings to platform APIs f...",
        "2024-08-08",
        "GitHub 仓库：rust-lang/libc: Raw bindings to platform",
        { b =>
            h2(b, "rust-lang/libc: Raw bindings to platform APIs f...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/rust-lang/libc"), "访问原始链接")
        }
    )
}
