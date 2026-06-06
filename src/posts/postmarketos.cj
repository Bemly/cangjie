package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPostmarketosPost(): Post {
    return Post(
        "postmarketos",
        "postmarketOS - 搜索",
        "2023-08-02",
        "搜索页面：postmarketOS - 搜索",
        { b =>
            h2(b, "postmarketOS - 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://cn.bing.com/search?q=postmarketOS"), "访问原始链接")
        }
    )
}
