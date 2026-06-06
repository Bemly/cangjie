package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog358Post(): Post {
    return Post(
        "blog-358",
        "6、逻辑代数的化简（公式法和卡诺图法） - 沐风半岛 - 博客园",
        "2024-12-14",
        "原文待补充：6、逻辑代数的化简（公式法和卡诺图法） - 沐风半岛 - 博客园",
        { b =>
            h2(b, "6、逻辑代数的化简（公式法和卡诺图法） - 沐风半岛 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/liuyz1996/p/15700133.html"), "阅读原文")
        }
    )
}
