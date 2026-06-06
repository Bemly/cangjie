package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNetlifyGooglePost(): Post {
    return Post(
        "netlify-google",
        "Netlify - Google 搜索",
        "2024-09-14",
        "搜索页面：Netlify - Google 搜索",
        { b =>
            h2(b, "Netlify - Google 搜索")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://www.google.com/search?client=firefox-b-d&q=Netlify"), "访问原始链接")
        }
    )
}
