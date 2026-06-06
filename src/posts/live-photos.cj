package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLivePhotosPost(): Post {
    return Post(
        "live-photos",
        "Live Photos原理 - 汪淼焱 - 博客园",
        "2025-03-06",
        "原文待补充：Live Photos原理 - 汪淼焱 - 博客园",
        { b =>
            h2(b, "Live Photos原理 - 汪淼焱 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/hencins/p/14229860.html"), "阅读原文")
        }
    )
}
