package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBilibiliAssPost(): Post {
    return Post(
        "bilibili-ass",
        "bilibili ASS 弹幕在线转换",
        "2021-12-04",
        "原文待补充：bilibili ASS 弹幕在线转换",
        { b =>
            h2(b, "bilibili ASS 弹幕在线转换")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://tiansh.github.io/us-danmaku/bilibili/"), "阅读原文")
        }
    )
}
