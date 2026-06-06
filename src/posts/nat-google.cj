package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNatGooglePost(): Post {
    return Post(
        "nat-google",
        "nat 预测端口 - Google 搜索",
        "2024-01-14",
        "搜索页面：nat 预测端口 - Google 搜索",
        { b =>
            h2(b, "nat 预测端口 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com.hk/search?client=firefox-b-d&q=nat+%E9%A2%84%E6%B5%8B%E7%AB%AF%E5%8F%A3#ip=1"), "访问原始链接")
        }
    )
}
