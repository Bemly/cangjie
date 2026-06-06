package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog242Post(): Post {
    return Post(
        "blog-242",
        "肇鑫的日常博客",
        "2023-08-20",
        "原文待补充：肇鑫的日常博客",
        { b =>
            h2(b, "肇鑫的日常博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wo.zhaoxin.pro/index.html"), "阅读原文")
        }
    )
}
