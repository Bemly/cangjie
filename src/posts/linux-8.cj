package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux8Post(): Post {
    return Post(
        "linux-8",
        "我踩过的那些坑，浅谈一下如何更优雅地使用 Linux - 少数派",
        "2024-09-25",
        "原文待补充：我踩过的那些坑，浅谈一下如何更优雅地使用 Linux - 少数派",
        { b =>
            h2(b, "我踩过的那些坑，浅谈一下如何更优雅地使用 Linux - 少数派")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://sspai.com/post/80003"), "阅读原文")
        }
    )
}
