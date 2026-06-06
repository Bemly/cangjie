package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCliclackRustPost(): Post {
    return Post(
        "cliclack-rust",
        "cliclack - Rust",
        "2025-01-07",
        "官方文档/工具：cliclack - Rust",
        { b =>
            h2(b, "cliclack - Rust")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://docs.rs/cliclack/latest/cliclack/"), "访问原始链接")
        }
    )
}
