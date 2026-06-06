package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYewRustPost(): Post {
    return Post(
        "yew-rust",
        "yew - Rust",
        "2024-07-04",
        "官方文档/工具：yew - Rust",
        { b =>
            h2(b, "yew - Rust")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://docs.rs/yew/latest/yew/"), "访问原始链接")
        }
    )
}
