package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost381Post(): Post {
    return Post(
        "post-381",
        "搜漫_一站式漫画搜索引擎",
        "2021-01-29",
        "搜索页面：搜漫_一站式漫画搜索引擎",
        { b =>
            h2(b, "搜漫_一站式漫画搜索引擎")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.soman.com/search.html?keyword=%E6%97%A0%E8%81%8C%E8%BD%AC%E7%94%9F"), "访问原始链接")
        }
    )
}
