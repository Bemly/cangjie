package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBitrabbitPost(): Post {
    return Post(
        "bitrabbit",
        "数据安全笔记 - bitrabbit - 博客园",
        "2024-10-31",
        "原文待补充：数据安全笔记 - bitrabbit - 博客园",
        { b =>
            h2(b, "数据安全笔记 - bitrabbit - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/bitrabbit/p/13929478.html"), "阅读原文")
        }
    )
}
