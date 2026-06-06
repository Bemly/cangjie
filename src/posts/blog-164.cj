package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog164Post(): Post {
    return Post(
        "blog-164",
        "深渊凝视着你",
        "2023-02-23",
        "原文待补充：深渊凝视着你",
        { b =>
            h2(b, "深渊凝视着你")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://starinitial.github.io/xpcheck/xpcheck/"), "阅读原文")
        }
    )
}
