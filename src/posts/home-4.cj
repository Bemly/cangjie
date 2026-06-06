package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHome4Post(): Post {
    return Post(
        "home-4",
        "Home",
        "[https://sdkman.io/](https://sdkman.io/)",
        "原文待补充：Home",
        { b =>
            h2(b, "Home")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "SDKMAN! the Software Development Kit Ma..."), "阅读原文")
        }
    )
}
