package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSegmentfPost(): Post {
    return Post(
        "segmentf",
        "博客搭建 - 想自建一个个人博客，现在目前比较好的博客框架能推荐一下吗？ - SegmentF...",
        "2024-08-22",
        "原文待补充：博客搭建 - 想自建一个个人博客，现在目前比较好的博客框架能推荐一下吗？ - S",
        { b =>
            h2(b, "博客搭建 - 想自建一个个人博客，现在目前比较好的博客框架能推荐一下吗？ - SegmentF...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://segmentfault.com/q/1010000042459229"), "阅读原文")
        }
    )
}
