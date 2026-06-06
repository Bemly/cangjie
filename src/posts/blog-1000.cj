package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog1000Post(): Post {
    return Post(
        "blog-1000",
        "吻妻轻博客",
        "2023-09-01",
        "原文待补充：吻妻轻博客",
        { b =>
            h2(b, "吻妻轻博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://blog.newxitong.com/"), "阅读原文")
        }
    )
}
