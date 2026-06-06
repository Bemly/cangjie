package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB2400zndsPost(): Post {
    return Post(
        "2400znds",
        "自主研发浏览器有多困难？代码规模有2400万行！_ZNDS资讯",
        "2023-01-09",
        "原文待补充：自主研发浏览器有多困难？代码规模有2400万行！_ZNDS资讯",
        { b =>
            h2(b, "自主研发浏览器有多困难？代码规模有2400万行！_ZNDS资讯")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://n.znds.com/article/32923.html"), "阅读原文")
        }
    )
}
