package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost189Post(): Post {
    return Post(
        "post-189",
        "《我的世界》开发者官网引导页",
        "2023-04-24",
        "网站主页：《我的世界》开发者官网引导页",
        { b =>
            h2(b, "《我的世界》开发者官网引导页")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://mc.163.com/dev/guide2/"), "访问原始链接")
        }
    )
}
