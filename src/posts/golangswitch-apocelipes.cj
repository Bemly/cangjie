package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGolangswitchApocelipesPost(): Post {
    return Post(
        "golangswitch-apocelipes",
        "golang中一种不常见的switch语句写法 - apocelipes - 博客园",
        "2023-05-04",
        "原文待补充：golang中一种不常见的switch语句写法 - apocelipes - 博",
        { b =>
            h2(b, "golang中一种不常见的switch语句写法 - apocelipes - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/apocelipes/p/17368617.html"), "阅读原文")
        }
    )
}
