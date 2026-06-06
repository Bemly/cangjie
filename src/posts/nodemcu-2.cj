package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodemcu2Post(): Post {
    return Post(
        "nodemcu-2",
        "NodeMCU - 丢石头百科",
        "2024-10-18",
        "原文待补充：NodeMCU - 丢石头百科",
        { b =>
            h2(b, "NodeMCU - 丢石头百科")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wiki.diustou.com/cn/NodeMCU"), "阅读原文")
        }
    )
}
