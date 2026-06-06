package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAddAnOverviewzoomingFeatureYalterniriPost(): Post {
    return Post(
        "add-an-overviewzooming-feature-yalterniri",
        "Add an overview/zooming feature · YaLTeR/niri ·...",
        "2025-01-12",
        "GitHub 文件：Add an overview/zooming feature · YaLTeR",
        { b =>
            h2(b, "Add an overview/zooming feature · YaLTeR/niri ·...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/YaLTeR/niri/discussions/352#discussioncomment-10094739"), "访问原始链接")
        }
    )
}
