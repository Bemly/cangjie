package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog183Post(): Post {
    return Post(
        "blog-183",
        "编程词典",
        "2023-04-16",
        "原文待补充：编程词典",
        { b =>
            h2(b, "编程词典")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://dict.code-nav.cn/"), "阅读原文")
        }
    )
}
