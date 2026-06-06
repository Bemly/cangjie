package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOasisyangPost(): Post {
    return Post(
        "oasisyang",
        "平方根倒数快速算法 - OasisYang - 博客园",
        "2024-11-02",
        "原文待补充：平方根倒数快速算法 - OasisYang - 博客园",
        { b =>
            h2(b, "平方根倒数快速算法 - OasisYang - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/oasisyang/p/13207384.html"), "阅读原文")
        }
    )
}
