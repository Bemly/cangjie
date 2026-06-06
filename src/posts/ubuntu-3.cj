package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntu3Post(): Post {
    return Post(
        "ubuntu-3",
        "Ubuntu系统入门教程-默认不进入图形界面 - 创客智造",
        "2024-09-27",
        "原文待补充：Ubuntu系统入门教程-默认不进入图形界面 - 创客智造",
        { b =>
            h2(b, "Ubuntu系统入门教程-默认不进入图形界面 - 创客智造")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.ncnynl.com/archives/201912/3561.html"), "阅读原文")
        }
    )
}
