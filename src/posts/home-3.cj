package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHome3Post(): Post {
    return Post(
        "home-3",
        "Home",
        "[https://devtools.vuejs.org/](https://devtools.vuejs.org/)",
        "原文待补充：Home",
        { b =>
            h2(b, "Home")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Vue Devtools"), "阅读原文")
        }
    )
}
