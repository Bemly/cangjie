package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEaglercraftEaglercraftGiteaPost(): Post {
    return Post(
        "eaglercraft-eaglercraft-gitea",
        "eaglercraft - Eaglercraft Gitea",
        "2024-07-03",
        "网站主页：eaglercraft - Eaglercraft Gitea",
        { b =>
            h2(b, "eaglercraft - Eaglercraft Gitea")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://git.eaglercraft.rip/eaglercraft"), "访问原始链接")
        }
    )
}
