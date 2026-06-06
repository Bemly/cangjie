package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGhostLinuxPost(): Post {
    return Post(
        "ghost-linux",
        "ghost linux - 招谁惹谁 - 博客园",
        "2021-09-12",
        "原文待补充：ghost linux - 招谁惹谁 - 博客园",
        { b =>
            h2(b, "ghost linux - 招谁惹谁 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/zhaoshuireshui/p/5593624.html"), "阅读原文")
        }
    )
}
