package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHellohebinPost(): Post {
    return Post(
        "hellohebin",
        "程序设计竞赛高分必备 - HelloHeBin - 博客园",
        "2025-04-07",
        "原文待补充：程序设计竞赛高分必备 - HelloHeBin - 博客园",
        { b =>
            h2(b, "程序设计竞赛高分必备 - HelloHeBin - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/hellohebin/articles/16591263.html"), "阅读原文")
        }
    )
}
