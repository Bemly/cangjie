package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getStdRust2Post(): Post {
    return Post(
        "std-rust-2",
        "std - Rust",
        "2024-08-07",
        "官方文档/工具：std - Rust",
        { b =>
            h2(b, "std - Rust")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://rustwiki.org/zh-CN/std/"), "访问原始链接")
        }
    )
}
