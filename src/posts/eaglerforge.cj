package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEaglerforgePost(): Post {
    return Post(
        "eaglerforge",
        "EaglerForge",
        "2024-07-03",
        "网站主页：EaglerForge",
        { b =>
            h2(b, "EaglerForge")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://eaglerforge.github.io/"), "访问原始链接")
        }
    )
}
