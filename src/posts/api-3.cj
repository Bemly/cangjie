package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApi3Post(): Post {
    return Post(
        "api-3",
        "一文看懂 API 是什么，有什么用？- 红帽",
        "2024-02-03",
        "原文待补充：一文看懂 API 是什么，有什么用？- 红帽",
        { b =>
            h2(b, "一文看懂 API 是什么，有什么用？- 红帽")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.redhat.com/zh/topics/api/what-are-application-programming-interfaces"), "阅读原文")
        }
    )
}
