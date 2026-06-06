package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMtMtPost(): Post {
    return Post(
        "mt-mt",
        "MT应用保护 - MT官方博客",
        "2022-06-30",
        "原文待补充：MT应用保护 - MT官方博客",
        { b =>
            h2(b, "MT应用保护 - MT官方博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.mt2.cn/app-protect/"), "阅读原文")
        }
    )
}
