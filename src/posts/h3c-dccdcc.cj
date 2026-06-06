package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getH3cDccdccPost(): Post {
    return Post(
        "h3c-dccdcc",
        "H3C 轮询DCC和共享DCC - 樊伟胜 - 博客园",
        "2023-10-13",
        "原文待补充：H3C 轮询DCC和共享DCC - 樊伟胜 - 博客园",
        { b =>
            h2(b, "H3C 轮询DCC和共享DCC - 樊伟胜 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/fanweisheng/p/11168599.html"), "阅读原文")
        }
    )
}
