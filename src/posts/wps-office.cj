package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWpsOfficePost(): Post {
    return Post(
        "wps-office",
        "WPS Office校园版（无广告/免激活）",
        "[http://www.llanjing.com/1134.html#respond](http://www.llanjing.com/1134.html#respond)",
        "原文待补充：WPS Office校园版（无广告/免激活）",
        { b =>
            h2(b, "WPS Office校园版（无广告/免激活）")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "蓝鲸博客"), "阅读原文")
        }
    )
}
