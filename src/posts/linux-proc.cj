package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxProcPost(): Post {
    return Post(
        "linux-proc",
        "Linux /proc目录详解 - 滴水瓦 - 博客园",
        "2024-08-10",
        "原文待补充：Linux /proc目录详解 - 滴水瓦 - 博客园",
        { b =>
            h2(b, "Linux /proc目录详解 - 滴水瓦 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/DswCnblog/p/5780389.html"), "阅读原文")
        }
    )
}
