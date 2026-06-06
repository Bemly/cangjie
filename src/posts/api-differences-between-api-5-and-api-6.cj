package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApiDifferencesBetweenApi5AndApi6Post(): Post {
    return Post(
        "api-differences-between-api-5-and-api-6",
        "API Differences between API 5 and API 6",
        "2024-01-19",
        "官方文档/工具：API Differences between API 5 and API 6",
        { b =>
            h2(b, "API Differences between API 5 and API 6")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://developer.harmonyos.com/cn/java_api_diff/changes.html"), "访问原始链接")
        }
    )
}
