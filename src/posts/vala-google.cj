package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getValaGooglePost(): Post {
    return Post(
        "vala-google",
        "vala语言 - Google 搜索",
        "2024-11-27",
        "搜索页面：vala语言 - Google 搜索",
        { b =>
            h2(b, "vala语言 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?q=vala%E8%AF%AD%E8%A8%80&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
