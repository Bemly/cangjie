package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPinia2Post(): Post {
    return Post(
        "pinia-2",
        "Pinia",
        "[https://pinia.vuejs.org/zh/](https://pinia.vuejs.org/zh/)",
        "原文待补充：Pinia",
        { b =>
            h2(b, "Pinia")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "The intuitive store for Vue.js"), "阅读原文")
        }
    )
}
