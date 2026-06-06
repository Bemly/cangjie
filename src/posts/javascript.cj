package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascriptPost(): Post {
    return Post(
        "javascript",
        "JavaScript教程 - 廖雪峰的官方网站",
        "2022-07-26",
        "原文待补充：JavaScript教程 - 廖雪峰的官方网站",
        { b =>
            h2(b, "JavaScript教程 - 廖雪峰的官方网站")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.liaoxuefeng.com/wiki/1022910821149312"), "阅读原文")
        }
    )
}
