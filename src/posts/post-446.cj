package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost446Post(): Post {
    return Post(
        "post-446",
        "搜多多",
        "2021-01-19",
        "搜索页面：搜多多",
        { b =>
            h2(b, "搜多多")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://duo123.xyz:99/search-Zorin-rel-1.html"), "访问原始链接")
        }
    )
}
