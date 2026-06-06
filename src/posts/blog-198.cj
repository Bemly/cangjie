package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog198Post(): Post {
    return Post(
        "blog-198",
        "观猴指南 - 博客 - 个人在线评测",
        "2023-04-27",
        "原文待补充：观猴指南 - 博客 - 个人在线评测",
        { b =>
            h2(b, "观猴指南 - 博客 - 个人在线评测")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://qoj.fzoi.top/post/1405"), "阅读原文")
        }
    )
}
