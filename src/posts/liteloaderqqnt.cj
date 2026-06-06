package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLiteloaderqqntPost(): Post {
    return Post(
        "liteloaderqqnt",
        "LiteLoaderQQNT",
        "2024-08-07",
        "官方文档/工具：LiteLoaderQQNT",
        { b =>
            h2(b, "LiteLoaderQQNT")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://liteloaderqqnt.github.io/"), "访问原始链接")
        }
    )
}
