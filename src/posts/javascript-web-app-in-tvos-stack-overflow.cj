package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascriptWebAppInTvosStackOverflowPost(): Post {
    return Post(
        "javascript-web-app-in-tvos-stack-overflow",
        "javascript - Web app in tvOS - Stack Overflow",
        "2025-03-09",
        "网站主页：javascript - Web app in tvOS - Stack Ove",
        { b =>
            h2(b, "javascript - Web app in tvOS - Stack Overflow")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/32503582/web-app-in-tvos"), "访问原始链接")
        }
    )
}
