package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTakonoheyaPost(): Post {
    return Post(
        "takonoheya",
        "TAKONOHEYA",
        "2026-04-16",
        "网站主页：TAKONOHEYA",
        { b =>
            h2(b, "TAKONOHEYA")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://takooctopus.github.io/2020-06-20-linux-MS-3/"), "访问原始链接")
        }
    )
}
