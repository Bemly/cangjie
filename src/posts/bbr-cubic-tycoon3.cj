package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBbrCubicTycoon3Post(): Post {
    return Post(
        "bbr-cubic-tycoon3",
        "数据中心网络 BBR 不如 CUBIC ？ - tycoon3 - 博客园",
        "2024-09-07",
        "原文待补充：数据中心网络 BBR 不如 CUBIC ？ - tycoon3 - 博客园",
        { b =>
            h2(b, "数据中心网络 BBR 不如 CUBIC ？ - tycoon3 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/dream397/p/14505239.html"), "阅读原文")
        }
    )
}
