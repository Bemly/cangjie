package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHostkerPost(): Post {
    return Post(
        "hostker",
        "文档 - Hostker - 可能是最萌的云计算服务商",
        "2024-02-01",
        "官方文档/工具：文档 - Hostker - 可能是最萌的云计算服务商",
        { b =>
            h2(b, "文档 - Hostker - 可能是最萌的云计算服务商")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://www.hostker.net/about.html#/api"), "访问原始链接")
        }
    )
}
