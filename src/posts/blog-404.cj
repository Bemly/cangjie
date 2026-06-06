package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog404Post(): Post {
    return Post(
        "blog-404",
        "除了百度，还有哪些好用的搜索引擎？ - 奔跑中的奶酪",
        "2021-08-08",
        "原文待补充：除了百度，还有哪些好用的搜索引擎？ - 奔跑中的奶酪",
        { b =>
            h2(b, "除了百度，还有哪些好用的搜索引擎？ - 奔跑中的奶酪")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.runningcheese.com/search-engines"), "阅读原文")
        }
    )
}
