package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWeztermFailsToStartEmitsResourceTemporarPost(): Post {
    return Post(
        "wezterm-fails-to-start-emits-resource-temporar",
        "Wezterm fails to start, emits Resource temporar...",
        "2024-08-02",
        "GitHub Issue：Wezterm fails to start, emits Resource t",
        { b =>
            h2(b, "Wezterm fails to start, emits Resource temporar...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/wez/wezterm/issues/4483"), "访问原始链接")
        }
    )
}
