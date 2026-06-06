package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getR0ser1Post(): Post {
    return Post(
        "r0ser1",
        "内网常见隧道通信 - R0ser1 - 博客园",
        "2024-01-14",
        "原文待补充：内网常见隧道通信 - R0ser1 - 博客园",
        { b =>
            h2(b, "内网常见隧道通信 - R0ser1 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/R0ser1/p/16060616.html"), "阅读原文")
        }
    )
}
