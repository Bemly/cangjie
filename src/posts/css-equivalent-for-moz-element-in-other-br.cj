package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCssEquivalentForMozElementInOtherBrPost(): Post {
    return Post(
        "css-equivalent-for-moz-element-in-other-br",
        "css - Equivalent for `-moz-element` in other br...",
        "2026-03-10",
        "网站主页：css - Equivalent for `-moz-element` in o",
        { b =>
            h2(b, "css - Equivalent for `-moz-element` in other br...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/18919305/equivalent-for-moz-element-in-other-browsers"), "访问原始链接")
        }
    )
}
