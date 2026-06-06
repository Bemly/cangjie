package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost34Post(): Post {
    return Post(
        "post-34",
        "主题中心-引擎概述",
        "2021-05-11",
        "官方文档/工具：主题中心-引擎概述",
        { b =>
            h2(b, "主题中心-引擎概述")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://developer.huawei.com/consumer/cn/doc/distribution/content/themes-engine-overview-0000001054588463"), "访问原始链接")
        }
    )
}
