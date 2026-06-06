package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog345Post(): Post {
    return Post(
        "blog-345",
        "计算机体系结构基础",
        "2024-10-01",
        "原文待补充：计算机体系结构基础",
        { b =>
            h2(b, "计算机体系结构基础")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://foxsen.github.io/archbase/"), "阅读原文")
        }
    )
}
