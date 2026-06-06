package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoogle7Post(): Post {
    return Post(
        "google-7",
        "‽ - Google 搜索",
        "2024-02-04",
        "搜索页面：‽ - Google 搜索",
        { b =>
            h2(b, "‽ - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=%E2%80%BD"), "访问原始链接")
        }
    )
}
