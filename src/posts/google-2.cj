package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoogle2Post(): Post {
    return Post(
        "google-2",
        "记性不好 卷不过别人怎么办 - Google 搜索",
        "2023-08-21",
        "搜索页面：记性不好 卷不过别人怎么办 - Google 搜索",
        { b =>
            h2(b, "记性不好 卷不过别人怎么办 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?q=%E8%AE%B0%E6%80%A7%E4%B8%8D%E5%A5%BD%20%E5%8D%B7%E4%B8%8D%E8%BF%87%E5%88%AB%E4%BA%BA%E6%80%8E%E4%B9%88%E5%8A%9E&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
