package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHostkerJavashuoPost(): Post {
    return Post(
        "hostker-javashuo",
        "Hostker雲主機 - JavaShuo",
        "2024-02-01",
        "原文待补充：Hostker雲主機 - JavaShuo",
        { b =>
            h2(b, "Hostker雲主機 - JavaShuo")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://hk.javashuo.com/article/p-bmcwcugy-ch.html"), "阅读原文")
        }
    )
}
