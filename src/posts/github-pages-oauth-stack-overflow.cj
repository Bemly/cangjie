package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubPagesOauthStackOverflowPost(): Post {
    return Post(
        "github-pages-oauth-stack-overflow",
        "Github pages + OAuth - Stack Overflow",
        "2024-02-03",
        "网站主页：Github pages + OAuth - Stack Overflow",
        { b =>
            h2(b, "Github pages + OAuth - Stack Overflow")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/21240032/github-pages-oauth"), "访问原始链接")
        }
    )
}
