package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getProteusGooglePost(): Post {
    return Post(
        "proteus-google",
        "Proteus - Google 搜索",
        "2024-07-05",
        "搜索页面：Proteus - Google 搜索",
        { b =>
            h2(b, "Proteus - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=Proteus"), "访问原始链接")
        }
    )
}
