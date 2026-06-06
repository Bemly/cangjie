package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHoganjsPost(): Post {
    return Post(
        "hoganjs",
        "Hogan.js",
        "2024-08-19",
        "原文待补充：Hogan.js",
        { b =>
            h2(b, "Hogan.js")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://twitter.github.io/hogan.js/"), "阅读原文")
        }
    )
}
