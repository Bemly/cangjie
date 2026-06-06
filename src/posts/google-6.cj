package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoogle6Post(): Post {
    return Post(
        "google-6",
        "迷宫干 - Google 搜索",
        "2024-10-17",
        "搜索页面：迷宫干 - Google 搜索",
        { b =>
            h2(b, "迷宫干 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?q=%E8%BF%B7%E5%AE%AB%E5%B9%B2&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
