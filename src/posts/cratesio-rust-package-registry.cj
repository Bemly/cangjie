package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCratesioRustPackageRegistryPost(): Post {
    return Post(
        "cratesio-rust-package-registry",
        "crates.io: Rust Package Registry",
        "2024-07-01",
        "官方文档/工具：crates.io: Rust Package Registry",
        { b =>
            h2(b, "crates.io: Rust Package Registry")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://crates.io/"), "访问原始链接")
        }
    )
}
