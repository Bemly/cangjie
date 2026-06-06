package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog734Post(): Post {
    return Post(
        "blog-734",
        "『七个月的挣扎之路』主线：简历、面试与找工作（上）",
        "[https://nickxu.me/post/seven-months-of-struggle-main-part-1](https://nickxu.me/post/seven-months-of-struggle-main-part-1)",
        "原文待补充：『七个月的挣扎之路』主线：简历、面试与找工作（上）",
        { b =>
            h2(b, "『七个月的挣扎之路』主线：简历、面试与找工作（上）")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "NX の 博客"), "阅读原文")
        }
    )
}
