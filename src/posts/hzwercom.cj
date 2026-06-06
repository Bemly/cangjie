package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHzwercomPost(): Post {
    return Post(
        "hzwercom",
        "算法竞赛编程变量命名指南 - 入门 - hzwer.com",
        "2025-04-04",
        "原文待补充：算法竞赛编程变量命名指南 - 入门 - hzwer.com",
        { b =>
            h2(b, "算法竞赛编程变量命名指南 - 入门 - hzwer.com")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://hzwer.com/9160.html"), "阅读原文")
        }
    )
}
