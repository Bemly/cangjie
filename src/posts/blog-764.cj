package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog764Post(): Post {
    return Post(
        "blog-764",
        "捕蛇者说",
        "2024-08-24",
        "原文待补充：捕蛇者说",
        { b =>
            h2(b, "捕蛇者说")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://pythonhunter.org/"), "阅读原文")
        }
    )
}
