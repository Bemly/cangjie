package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSumtecPost(): Post {
    return Post(
        "sumtec",
        "有趣的语言 - Sumtec - 博客园",
        "2025-04-19",
        "原文待补充：有趣的语言 - Sumtec - 博客园",
        { b =>
            h2(b, "有趣的语言 - Sumtec - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/sumtec/archive/2007/07/20/824357.html"), "阅读原文")
        }
    )
}
