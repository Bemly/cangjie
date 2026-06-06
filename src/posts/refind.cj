package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRefindPost(): Post {
    return Post(
        "refind",
        "rEFInd去掉不必要的启动项_万无引力的博客-CSDN博客_refind删除多余启动项",
        "2022-02-28",
        "原文待补充：rEFInd去掉不必要的启动项_万无引力的博客-CSDN博客_refind删除多",
        { b =>
            h2(b, "rEFInd去掉不必要的启动项_万无引力的博客-CSDN博客_refind删除多余启动项")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_41601836/article/details/106504097"), "阅读原文")
        }
    )
}
