package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDavidKobaliaPost(): Post {
    return Post(
        "david-kobalia",
        "David Kobalia",
        "2023-01-16",
        "原文待补充：David Kobalia",
        { b =>
            h2(b, "David Kobalia")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://insolitum.github.io/"), "阅读原文")
        }
    )
}
