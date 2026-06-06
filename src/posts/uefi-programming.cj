package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUefiProgrammingPost(): Post {
    return Post(
        "uefi-programming",
        "UEFI programming",
        "2025-12-20",
        "原文待补充：UEFI programming",
        { b =>
            h2(b, "UEFI programming")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://zhenghuadai.github.io/blog.html"), "阅读原文")
        }
    )
}
