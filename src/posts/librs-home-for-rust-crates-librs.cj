package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLibrsHomeForRustCratesLibrsPost(): Post {
    return Post(
        "librs-home-for-rust-crates-librs",
        "Lib.rs — home for Rust crates // Lib.rs",
        "2024-08-06",
        "官方文档/工具：Lib.rs — home for Rust crates // Lib.rs",
        { b =>
            h2(b, "Lib.rs — home for Rust crates // Lib.rs")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://lib.rs/"), "访问原始链接")
        }
    )
}
