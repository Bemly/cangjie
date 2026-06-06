package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEdaPost(): Post {
    return Post(
        "eda",
        "芙兰灯 - 嘉立创EDA开源硬件平台",
        "2023-04-16",
        "原文待补充：芙兰灯 - 嘉立创EDA开源硬件平台",
        { b =>
            h2(b, "芙兰灯 - 嘉立创EDA开源硬件平台")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://oshwhub.com/c3h4o/fu-lan-deng"), "阅读原文")
        }
    )
}
