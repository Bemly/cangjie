package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCodeSearchPost(): Post {
    return Post(
        "code-search",
        "Code Search",
        "[https://grep.app/search?q=%E5%B9%B6%E6%9F%A5%E9%9B%86](https://grep.app/search?q=%E5%B9%B6%E6%9F%A5%E9%9B%86)",
        "原文待补充：Code Search",
        { b =>
            h2(b, "Code Search")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Grep by Vercel"), "阅读原文")
        }
    )
}
