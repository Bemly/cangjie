package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTechAntidotePost(): Post {
    return Post(
        "tech-antidote",
        "Tech Antidote - ‎",
        "Tech \",
        "原文待补充：Tech Antidote - ‎",
        { b =>
            h2(b, "Tech Antidote - ‎")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "LINUX \\"), "阅读原文")
        }
    )
}
