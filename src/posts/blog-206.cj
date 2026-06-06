package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog206Post(): Post {
    return Post(
        "blog-206",
        "博客园 - 开发者的网上家园",
        "2023-05-04",
        "原文待补充：博客园 - 开发者的网上家园",
        { b =>
            h2(b, "博客园 - 开发者的网上家园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/"), "阅读原文")
        }
    )
}
