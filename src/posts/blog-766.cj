package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog766Post(): Post {
    return Post(
        "blog-766",
        "嘉宾们 - 捕蛇者说",
        "2024-08-24",
        "原文待补充：嘉宾们 - 捕蛇者说",
        { b =>
            h2(b, "嘉宾们 - 捕蛇者说")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://pythonhunter.org/authors"), "阅读原文")
        }
    )
}
