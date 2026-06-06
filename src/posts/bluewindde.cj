package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBluewinddePost(): Post {
    return Post(
        "bluewindde",
        "我的随笔 - bluewindde - 博客园",
        "2025-04-06",
        "原文待补充：我的随笔 - bluewindde - 博客园",
        { b =>
            h2(b, "我的随笔 - bluewindde - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/bluewindde/p/"), "阅读原文")
        }
    )
}
