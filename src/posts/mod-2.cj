package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMod2Post(): Post {
    return Post(
        "mod-2",
        "Mod开发简介",
        "2020-02-02",
        "网站主页：Mod开发简介",
        { b =>
            h2(b, "Mod开发简介")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://mc.163.com/mcstudio/modapi/2-1.html"), "访问原始链接")
        }
    )
}
