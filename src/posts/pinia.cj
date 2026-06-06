package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPiniaPost(): Post {
    return Post(
        "pinia",
        "Pinia",
        "[https://pinia.vuejs.org/](https://pinia.vuejs.org/)",
        "原文待补充：Pinia",
        { b =>
            h2(b, "Pinia")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "The intuitive store for Vue.js"), "阅读原文")
        }
    )
}
