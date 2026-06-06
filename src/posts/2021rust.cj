package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB2021rustPost(): Post {
    return Post(
        "2021rust",
        "2021年Rust语言中文精选",
        "2024-08-06",
        "原文待补充：2021年Rust语言中文精选",
        { b =>
            h2(b, "2021年Rust语言中文精选")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.yuque.com/chaosbot/rust_magazine_2021"), "阅读原文")
        }
    )
}
