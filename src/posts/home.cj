package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHomePost(): Post {
    return Post(
        "home",
        "Home",
        "[https://v3.yarnpkg.com/](https://v3.yarnpkg.com/)",
        "原文待补充：Home",
        { b =>
            h2(b, "Home")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Yarn - Package Manager"), "阅读原文")
        }
    )
}
