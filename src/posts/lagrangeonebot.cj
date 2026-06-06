package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLagrangeonebotPost(): Post {
    return Post(
        "lagrangeonebot",
        "检查是否可以发送图片 - Lagrange.OneBot",
        "2026-04-29",
        "原文待补充：检查是否可以发送图片 - Lagrange.OneBot",
        { b =>
            h2(b, "检查是否可以发送图片 - Lagrange.OneBot")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://lagrange-onebot.apifox.cn/"), "阅读原文")
        }
    )
}
