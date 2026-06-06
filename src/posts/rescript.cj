package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRescriptPost(): Post {
    return Post(
        "rescript",
        "ReScript 编程语言",
        "2025-02-27",
        "原文待补充：ReScript 编程语言",
        { b =>
            h2(b, "ReScript 编程语言")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://rescript-idea.github.io/"), "阅读原文")
        }
    )
}
