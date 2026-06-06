package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog937Post(): Post {
    return Post(
        "blog-937",
        "一百多行 C 语言代码实现一个简单异步事件触发机制!",
        "2025-04-25",
        "原文待补充：一百多行 C 语言代码实现一个简单异步事件触发机制!",
        { b =>
            h2(b, "一百多行 C 语言代码实现一个简单异步事件触发机制!")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mp.weixin.qq.com/s/AGGp3FJ1OeyQ8KtSIlBH9w"), "阅读原文")
        }
    )
}
