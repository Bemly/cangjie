package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZorinPost(): Post {
    return Post(
        "zorin",
        "Zorin - 雨花阁搜索按时间排序",
        "2021-01-20",
        "搜索页面：Zorin - 雨花阁搜索按时间排序",
        { b =>
            h2(b, "Zorin - 雨花阁搜索按时间排序")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.yhg66c.xyz/search/Zorin-1-time.html"), "访问原始链接")
        }
    )
}
