package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPythonapiPost(): Post {
    return Post(
        "pythonapi",
        "[Python]抓包获得青龙面板api-代码狗",
        "2023-04-15",
        "原文待补充：[Python]抓包获得青龙面板api-代码狗",
        { b =>
            h2(b, "[Python]抓包获得青龙面板api-代码狗")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.daimadog.com/8342.html"), "阅读原文")
        }
    )
}
