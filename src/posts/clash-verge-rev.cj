package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getClashVergeRevPost(): Post {
    return Post(
        "clash-verge-rev",
        "安装 - Clash Verge Rev",
        "2024-02-05",
        "官方文档/工具：安装 - Clash Verge Rev",
        { b =>
            h2(b, "安装 - Clash Verge Rev")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://clash-verge-rev.github.io/install.html"), "访问原始链接")
        }
    )
}
