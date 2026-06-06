package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEaglerrinthPost(): Post {
    return Post(
        "eaglerrinth",
        "EaglerRinth",
        "2024-07-03",
        "网站主页：EaglerRinth",
        { b =>
            h2(b, "EaglerRinth")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://eaglerrinth.github.io/"), "访问原始链接")
        }
    )
}
