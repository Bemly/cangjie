package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWindowsvbnetPost(): Post {
    return Post(
        "windowsvbnet",
        "在中国windows开发者是否应该放弃VB.NET? - 技术家园,原创博客",
        "2024-08-20",
        "原文待补充：在中国windows开发者是否应该放弃VB.NET? - 技术家园,原创博客",
        { b =>
            h2(b, "在中国windows开发者是否应该放弃VB.NET? - 技术家园,原创博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.songshizhao.com/blog/blogPage/431.html"), "阅读原文")
        }
    )
}
