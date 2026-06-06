package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReactFacetPost(): Post {
    return Post(
        "react-facet",
        "@react-facet",
        "2024-08-06",
        "官方文档/工具：@react-facet",
        { b =>
            h2(b, "@react-facet")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://react-facet.mojang.com/"), "访问原始链接")
        }
    )
}
