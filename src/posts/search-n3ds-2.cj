package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSearchN3ds2Post(): Post {
    return Post(
        "search-n3ds-2",
        "Search · n3ds",
        "2021-01-22",
        "搜索页面：Search · n3ds",
        { b =>
            h2(b, "Search · n3ds")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://github.com/search?q=n3ds&type=Repositories"), "访问原始链接")
        }
    )
}
