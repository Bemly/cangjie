package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHomeFoxrefirewvgWikiPost(): Post {
    return Post(
        "home-foxrefirewvg-wiki",
        "Home · FoxRefire/wvg Wiki",
        "2026-03-06",
        "GitHub Wiki：Home · FoxRefire/wvg Wiki",
        { b =>
            h2(b, "Home · FoxRefire/wvg Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/FoxRefire/wvg/wiki"), "访问原始链接")
        }
    )
}
