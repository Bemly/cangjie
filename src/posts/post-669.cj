package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost669Post(): Post {
    return Post(
        "post-669",
        "最新工具 - 下载中心 - 华为开发者联盟",
        "2024-08-11",
        "官方文档/工具：最新工具 - 下载中心 - 华为开发者联盟",
        { b =>
            h2(b, "最新工具 - 下载中心 - 华为开发者联盟")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://developer.huawei.com/consumer/cn/download/"), "访问原始链接")
        }
    )
}
