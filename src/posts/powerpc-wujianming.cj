package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPowerpcWujianmingPost(): Post {
    return Post(
        "powerpc-wujianming",
        "PowerPC技术与市场杂谈 - 吴建明wujianming - 博客园",
        "2024-09-29",
        "原文待补充：PowerPC技术与市场杂谈 - 吴建明wujianming - 博客园",
        { b =>
            h2(b, "PowerPC技术与市场杂谈 - 吴建明wujianming - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/wujianming-110117/p/16538827.html"), "阅读原文")
        }
    )
}
