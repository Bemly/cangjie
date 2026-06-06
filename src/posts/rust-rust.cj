package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustRustPost(): Post {
    return Post(
        "rust-rust",
        "【Rust 基础篇】Rust 弱引用：解决引用循环与内存泄漏-腾讯云开发者社区-腾讯云",
        "2024-07-05",
        "原文待补充：【Rust 基础篇】Rust 弱引用：解决引用循环与内存泄漏-腾讯云开发者社区-",
        { b =>
            h2(b, "【Rust 基础篇】Rust 弱引用：解决引用循环与内存泄漏-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2338798"), "阅读原文")
        }
    )
}
