package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustRust2Post(): Post {
    return Post(
        "rust-rust-2",
        "打包和分发一个 Rust 工具 - Rust 的命令行应用",
        "2024-08-08",
        "原文待补充：打包和分发一个 Rust 工具 - Rust 的命令行应用",
        { b =>
            h2(b, "打包和分发一个 Rust 工具 - Rust 的命令行应用")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://llever.com/cli-wg-zh/tutorial/packaging.zh.html"), "阅读原文")
        }
    )
}
