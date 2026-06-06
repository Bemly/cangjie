package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApiApiPost(): Post {
    return Post(
        "api-api",
        "月萌API - 月萌API",
        "2024-01-16",
        "网站主页：月萌API - 月萌API",
        { b =>
            h2(b, "月萌API - 月萌API")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.moonapi.com/index.html"), "访问原始链接")
        }
    )
}
