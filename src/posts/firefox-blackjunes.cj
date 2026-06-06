package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFirefoxBlackjunesPost(): Post {
    return Post(
        "firefox-blackjunes",
        "Firefox 中国账户与国际账户 标签数据同步问题 - blackjunes - 博客园",
        "2021-01-28",
        "原文待补充：Firefox 中国账户与国际账户 标签数据同步问题 - blackjunes ",
        { b =>
            h2(b, "Firefox 中国账户与国际账户 标签数据同步问题 - blackjunes - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/Sean-BI/p/7212236.html"), "阅读原文")
        }
    )
}
