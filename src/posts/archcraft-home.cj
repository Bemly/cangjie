package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArchcraftHomePost(): Post {
    return Post(
        "archcraft-home",
        "Archcraft : Home",
        "2023-10-24",
        "网站主页：Archcraft : Home",
        { b =>
            h2(b, "Archcraft : Home")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://archcraft.io/"), "访问原始链接")
        }
    )
}
