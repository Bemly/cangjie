package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog24Post(): Post {
    return Post(
        "blog-24",
        "首页 - 帅锅博客",
        "2021-02-02",
        "原文待补充：首页 - 帅锅博客",
        { b =>
            h2(b, "首页 - 帅锅博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://shuaiguo.club/index.shtml"), "阅读原文")
        }
    )
}
