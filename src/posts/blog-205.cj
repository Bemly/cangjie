package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog205Post(): Post {
    return Post(
        "blog-205",
        "开源软件指南",
        "[https://opensource.guide/zh-hans/](https://opensource.guide/zh-hans/)",
        "原文待补充：开源软件指南",
        { b =>
            h2(b, "开源软件指南")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Open Source Guides"), "阅读原文")
        }
    )
}
