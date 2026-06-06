package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCoreopsRustPost(): Post {
    return Post(
        "coreops-rust",
        "core::ops - Rust",
        "2024-08-05",
        "官方文档/工具：core::ops - Rust",
        { b =>
            h2(b, "core::ops - Rust")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://doc.rust-lang.org/core/ops/"), "访问原始链接")
        }
    )
}
