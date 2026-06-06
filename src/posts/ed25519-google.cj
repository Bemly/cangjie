package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEd25519GooglePost(): Post {
    return Post(
        "ed25519-google",
        "Ed25519 - Google 搜索",
        "2024-09-12",
        "搜索页面：Ed25519 - Google 搜索",
        { b =>
            h2(b, "Ed25519 - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=Ed25519"), "访问原始链接")
        }
    )
}
