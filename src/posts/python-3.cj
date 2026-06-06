package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPython3Post(): Post {
    return Post(
        "python-3",
        "知识点补漏 · 草根学Python",
        "2020-02-09",
        "网站主页：知识点补漏 · 草根学Python",
        { b =>
            h2(b, "知识点补漏 · 草根学Python")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.readwithu.com/"), "访问原始链接")
        }
    )
}
