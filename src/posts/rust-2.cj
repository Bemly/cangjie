package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRust2Post(): Post {
    return Post(
        "rust-2",
        "关于 Rust 字符串字面值的一些总结 - 人间指南",
        "2024-08-10",
        "原文待补充：关于 Rust 字符串字面值的一些总结 - 人间指南",
        { b =>
            h2(b, "关于 Rust 字符串字面值的一些总结 - 人间指南")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://liubin.org/blog/2022/04/01/rust-string-literals/"), "阅读原文")
        }
    )
}
