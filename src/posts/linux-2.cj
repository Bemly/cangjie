package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux2Post(): Post {
    return Post(
        "linux-2",
        "英特尔® 无线适配器的 Linux* 支持",
        "2021-09-28",
        "原文待补充：英特尔® 无线适配器的 Linux* 支持",
        { b =>
            h2(b, "英特尔® 无线适配器的 Linux* 支持")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.intel.cn/content/www/cn/zh/support/articles/000005511/wireless.html"), "阅读原文")
        }
    )
}
