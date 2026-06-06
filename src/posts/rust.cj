package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustPost(): Post {
    return Post(
        "rust",
        "介绍 - Rust精选",
        "2024-08-06",
        "原文待补充：介绍 - Rust精选",
        { b =>
            h2(b, "介绍 - Rust精选")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://rustmagazine.github.io/rust_magazine_2021/index.html"), "阅读原文")
        }
    )
}
