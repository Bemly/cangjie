package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBilibiliAss2Post(): Post {
    return Post(
        "bilibili-ass-2",
        "bilibili ASS 弹幕在线转换",
        "2026-02-28",
        "原文待补充：bilibili ASS 弹幕在线转换",
        { b =>
            h2(b, "bilibili ASS 弹幕在线转换")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://tiansh.github.io/us-danmaku/bilibili/"), "阅读原文")
        }
    )
}
