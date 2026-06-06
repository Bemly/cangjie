package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHome2Post(): Post {
    return Post(
        "home-2",
        "Home",
        "[https://spidermonkey.dev/](https://spidermonkey.dev/)",
        "原文待补充：Home",
        { b =>
            h2(b, "Home")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "SpiderMonkey JavaScript/WebAssembly Engine"), "阅读原文")
        }
    )
}
