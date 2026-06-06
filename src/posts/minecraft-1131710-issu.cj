package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMinecraft1131710IssuPost(): Post {
    return Post(
        "minecraft-1131710-issu",
        "下载时顺带解决 Minecraft 1.13以下，1.7.10以上版本无声 问题 · Issu...",
        "2024-06-24",
        "GitHub Issue：下载时顺带解决 Minecraft 1.13以下，1.7.10以上版本无声 问题",
        { b =>
            h2(b, "下载时顺带解决 Minecraft 1.13以下，1.7.10以上版本无声 问题 · Issu...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/Hex-Dragon/PCL2/issues/3779"), "访问原始链接")
        }
    )
}
