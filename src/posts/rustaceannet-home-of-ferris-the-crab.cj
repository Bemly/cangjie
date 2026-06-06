package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustaceannetHomeOfFerrisTheCrabPost(): Post {
    return Post(
        "rustaceannet-home-of-ferris-the-crab",
        "Rustacean.net: Home of Ferris the Crab",
        "2024-07-01",
        "官方文档/工具：Rustacean.net: Home of Ferris the Crab",
        { b =>
            h2(b, "Rustacean.net: Home of Ferris the Crab")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://rustacean.net/"), "访问原始链接")
        }
    )
}
