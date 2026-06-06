package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog894Post(): Post {
    return Post(
        "blog-894",
        "帕斯内网穿透",
        "2025-01-02",
        "原文待补充：帕斯内网穿透",
        { b =>
            h2(b, "帕斯内网穿透")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://dashboard.passnat.com/tun/node"), "阅读原文")
        }
    )
}
