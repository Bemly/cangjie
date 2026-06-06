package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHigherMemoryUsageOnNetCoreVersionIssuPost(): Post {
    return Post(
        "higher-memory-usage-on-net-core-version-issu",
        "Higher Memory Usage on .NET Core version · Issu...",
        "2024-08-27",
        "GitHub Issue：Higher Memory Usage on .NET Core version",
        { b =>
            h2(b, "Higher Memory Usage on .NET Core version · Issu...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/AvaloniaUI/Avalonia/issues/5646"), "访问原始链接")
        }
    )
}
