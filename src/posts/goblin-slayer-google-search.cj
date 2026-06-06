package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoblinSlayerGoogleSearchPost(): Post {
    return Post(
        "goblin-slayer-google-search",
        "goblin slayer - Google Search",
        "2022-06-28",
        "搜索页面：goblin slayer - Google Search",
        { b =>
            h2(b, "goblin slayer - Google Search")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?q=goblin%20slayer&ie=utf-8&oe=utf-8&client=firefox-b"), "访问原始链接")
        }
    )
}
