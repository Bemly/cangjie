package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoogle4Post(): Post {
    return Post(
        "google-4",
        "驱动妖精 - Google 搜索",
        "2024-04-12",
        "搜索页面：驱动妖精 - Google 搜索",
        { b =>
            h2(b, "驱动妖精 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com.hk/search?q=%E9%A9%B1%E5%8A%A8%E5%A6%96%E7%B2%BE&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
