package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMappingScrollWheelIssue6667KovidgoyalPost(): Post {
    return Post(
        "mapping-scroll-wheel-issue-6667-kovidgoyal",
        "Mapping scroll wheel · Issue #6667 · kovidgoyal...",
        "2024-08-03",
        "GitHub Issue：Mapping scroll wheel · Issue #6667 · kov",
        { b =>
            h2(b, "Mapping scroll wheel · Issue #6667 · kovidgoyal...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/kovidgoyal/kitty/issues/6667"), "访问原始链接")
        }
    )
}
