package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZihaoilPost(): Post {
    return Post(
        "zihaoil",
        "zihao_il的破站",
        "2022-07-21",
        "原文待补充：zihao_il的破站",
        { b =>
            h2(b, "zihao_il的破站")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://zihao-il.github.io/"), "阅读原文")
        }
    )
}
