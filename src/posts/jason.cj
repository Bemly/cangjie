package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJasonPost(): Post {
    return Post(
        "jason",
        "Jason",
        "2023-04-14",
        "原文待补充：Jason",
        { b =>
            h2(b, "Jason")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://zhengjie9510.github.io/"), "阅读原文")
        }
    )
}
