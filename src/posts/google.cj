package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGooglePost(): Post {
    return Post(
        "google",
        "天才麻将少女 - Google 搜索",
        "2022-01-09",
        "搜索页面：天才麻将少女 - Google 搜索",
        { b =>
            h2(b, "天才麻将少女 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com.hk/search?q=%E5%A4%A9%E6%89%8D%E9%BA%BB%E5%B0%86%E5%B0%91%E5%A5%B3&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
