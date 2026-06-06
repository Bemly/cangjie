package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCrossRustPost(): Post {
    return Post(
        "cross-rust",
        "cross: rust 的跨平台编译利器",
        "[https://hustclf.github.io/posts/3d1fe733/](https://hustclf.github.io/posts/3d1fe733/)",
        "原文待补充：cross: rust 的跨平台编译利器",
        { b =>
            h2(b, "cross: rust 的跨平台编译利器")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "大飞哥的博客"), "阅读原文")
        }
    )
}
