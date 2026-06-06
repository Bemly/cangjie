package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJsonnetsHomeObarlikjsonnetWikiPost(): Post {
    return Post(
        "jsonnets-home-obarlikjsonnet-wiki",
        "Json.Net's Home · obarlik/Json.Net Wiki",
        "2024-12-29",
        "GitHub Wiki：Json.Net's Home · obarlik/Json.Net Wiki",
        { b =>
            h2(b, "Json.Net's Home · obarlik/Json.Net Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/obarlik/Json.Net/wiki/Json.Net's-Home"), "访问原始链接")
        }
    )
}
