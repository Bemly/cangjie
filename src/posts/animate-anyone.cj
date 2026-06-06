package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAnimateAnyonePost(): Post {
    return Post(
        "animate-anyone",
        "Animate Anyone",
        "2024-01-07",
        "原文待补充：Animate Anyone",
        { b =>
            h2(b, "Animate Anyone")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://humanaigc.github.io/animate-anyone/"), "阅读原文")
        }
    )
}
