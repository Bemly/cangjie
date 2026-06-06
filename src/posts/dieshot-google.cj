package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDieshotGooglePost(): Post {
    return Post(
        "dieshot-google",
        "dieshot - Google 搜索",
        "2024-08-15",
        "搜索页面：dieshot - Google 搜索",
        { b =>
            h2(b, "dieshot - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=dieshot"), "访问原始链接")
        }
    )
}
