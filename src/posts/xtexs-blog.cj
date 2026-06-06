package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXtexsBlogPost(): Post {
    return Post(
        "xtexs-blog",
        "xtex's Blog",
        "2023-08-21",
        "原文待补充：xtex's Blog",
        { b =>
            h2(b, "xtex's Blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.xtexx.eu.org/archives/"), "阅读原文")
        }
    )
}
