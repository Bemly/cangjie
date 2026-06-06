package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog849Post(): Post {
    return Post(
        "blog-849",
        "检索结果_图书馆",
        "2024-10-18",
        "原文待补充：检索结果_图书馆",
        { b =>
            h2(b, "检索结果_图书馆")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://172.31.44.79:8080/opac/search"), "阅读原文")
        }
    )
}
