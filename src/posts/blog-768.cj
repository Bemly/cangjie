package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog768Post(): Post {
    return Post(
        "blog-768",
        "嘉宾如何参与录制 - 捕蛇者说",
        "2024-08-24",
        "原文待补充：嘉宾如何参与录制 - 捕蛇者说",
        { b =>
            h2(b, "嘉宾如何参与录制 - 捕蛇者说")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://pythonhunter.org/howto"), "阅读原文")
        }
    )
}
