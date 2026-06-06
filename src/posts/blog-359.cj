package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog359Post(): Post {
    return Post(
        "blog-359",
        "我的随笔 - 沐风半岛 - 博客园",
        "2024-12-14",
        "原文待补充：我的随笔 - 沐风半岛 - 博客园",
        { b =>
            h2(b, "我的随笔 - 沐风半岛 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/liuyz1996/p/"), "阅读原文")
        }
    )
}
