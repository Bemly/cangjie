package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getStdiostdioRustPost(): Post {
    return Post(
        "stdiostdio-rust",
        "std::io::stdio - Rust",
        "2024-08-07",
        "官方文档/工具：std::io::stdio - Rust",
        { b =>
            h2(b, "std::io::stdio - Rust")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://stdrs.dev/nightly/x86_64-unknown-linux-gnu/std/io/stdio/index.html"), "访问原始链接")
        }
    )
}
