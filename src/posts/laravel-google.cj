package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLaravelGooglePost(): Post {
    return Post(
        "laravel-google",
        "Laravel - Google 搜索",
        "2024-08-23",
        "搜索页面：Laravel - Google 搜索",
        { b =>
            h2(b, "Laravel - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=Laravel"), "访问原始链接")
        }
    )
}
