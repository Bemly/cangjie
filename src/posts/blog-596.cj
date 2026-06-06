package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog596Post(): Post {
    return Post(
        "blog-596",
        "函数式编程初探 - 阮一峰的网络日志",
        "2024-07-01",
        "原文待补充：函数式编程初探 - 阮一峰的网络日志",
        { b =>
            h2(b, "函数式编程初探 - 阮一峰的网络日志")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.ruanyifeng.com/blog/2012/04/functional_programming.html"), "阅读原文")
        }
    )
}
