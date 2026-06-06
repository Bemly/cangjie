package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost482Post(): Post {
    return Post(
        "post-482",
        "百度图片",
        "2021-12-26",
        "搜索页面：百度图片",
        { b =>
            h2(b, "百度图片")
            p(b, "此链接为搜索引擎搜索页面，非博客文章。")
            a(b, attrs("href", "https://image.baidu.com/search/wiseindex?wiseps=1"), "访问原始链接")
        }
    )
}
