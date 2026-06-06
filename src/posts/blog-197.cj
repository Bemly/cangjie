package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog197Post(): Post {
    return Post(
        "blog-197",
        "洛谷观猴教学指南-新手向 - 你永远不知道下一张牌是什么…… - 洛谷博客",
        "2023-04-27",
        "原文待补充：洛谷观猴教学指南-新手向 - 你永远不知道下一张牌是什么…… - 洛谷博客",
        { b =>
            h2(b, "洛谷观猴教学指南-新手向 - 你永远不知道下一张牌是什么…… - 洛谷博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.luogu.com.cn/blog/Danno-Dash/luo-gu-guan-hou-zhi-nan"), "阅读原文")
        }
    )
}
