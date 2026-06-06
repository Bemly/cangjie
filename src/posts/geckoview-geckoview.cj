package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGeckoviewGeckoviewPost(): Post {
    return Post(
        "geckoview-geckoview",
        "Geckoview - GeckoView",
        "2023-01-09",
        "官方文档/工具：Geckoview - GeckoView",
        { b =>
            h2(b, "Geckoview - GeckoView")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://mozilla.github.io/geckoview/"), "访问原始链接")
        }
    )
}
