package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJsdelivrwujiuqierPost(): Post {
    return Post(
        "jsdelivrwujiuqier",
        "使用jsdelivr时不要瞎搞_wujiuqier的博客-CSDN博客_jsdelivr",
        "2022-04-24",
        "原文待补充：使用jsdelivr时不要瞎搞_wujiuqier的博客-CSDN博客_jsde",
        { b =>
            h2(b, "使用jsdelivr时不要瞎搞_wujiuqier的博客-CSDN博客_jsdelivr")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_35977139/article/details/108218431"), "阅读原文")
        }
    )
}
