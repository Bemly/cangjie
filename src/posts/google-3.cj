package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoogle3Post(): Post {
    return Post(
        "google-3",
        "ないしょのないしょ！ - Google 搜索",
        "2024-01-27",
        "搜索页面：ないしょのないしょ！ - Google 搜索",
        { b =>
            h2(b, "ないしょのないしょ！ - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com.hk/search?q=%E3%81%AA%E3%81%84%E3%81%97%E3%82%87%E3%81%AE%E3%81%AA%E3%81%84%E3%81%97%E3%82%87%EF%BC%81&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
