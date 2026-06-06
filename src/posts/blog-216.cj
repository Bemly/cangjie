package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog216Post(): Post {
    return Post(
        "blog-216",
        "罗德岛移动终端",
        "2023-05-25",
        "原文待补充：罗德岛移动终端",
        { b =>
            h2(b, "罗德岛移动终端")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://probius.gitee.io/download/"), "阅读原文")
        }
    )
}
