package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost606Post(): Post {
    return Post(
        "post-606",
        "吃掉小猫猫",
        "2024-07-08",
        "网站主页：吃掉小猫猫",
        { b =>
            h2(b, "吃掉小猫猫")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://eafoo.github.io/eatcat/"), "访问原始链接")
        }
    )
}
