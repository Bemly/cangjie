package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost265Post(): Post {
    return Post(
        "post-265",
        "我的世界开发者官网",
        "2024-01-12",
        "网站主页：我的世界开发者官网",
        { b =>
            h2(b, "我的世界开发者官网")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://mc.163.com/m/dev/developer_cn/news/renew/20240111/37047_1131472.html?target=browser"), "访问原始链接")
        }
    )
}
