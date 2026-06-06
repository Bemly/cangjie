package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAutojsProPost(): Post {
    return Post(
        "autojs-pro",
        "Auto.js Pro博客",
        "2023-01-17",
        "原文待补充：Auto.js Pro博客",
        { b =>
            h2(b, "Auto.js Pro博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.autojs.org/"), "阅读原文")
        }
    )
}
