package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBetaPost(): Post {
    return Post(
        "beta",
        "开发者搜索-Beta-让技术搜索更简单高效",
        "2023-01-18",
        "原文待补充：开发者搜索-Beta-让技术搜索更简单高效",
        { b =>
            h2(b, "开发者搜索-Beta-让技术搜索更简单高效")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://kaifa.baidu.com/"), "阅读原文")
        }
    )
}
