package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIcalAlbertliuPost(): Post {
    return Post(
        "ical-albertliu",
        "石大iCal课表使用指南 - Albert_liu - 博客园",
        "2022-10-07",
        "原文待补充：石大iCal课表使用指南 - Albert_liu - 博客园",
        { b =>
            h2(b, "石大iCal课表使用指南 - Albert_liu - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/albert-biu/p/10464344.html"), "阅读原文")
        }
    )
}
