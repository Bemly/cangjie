package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost451Post(): Post {
    return Post(
        "post-451",
        "基础功能",
        "2020-10-01",
        "官方文档/工具：基础功能",
        { b =>
            h2(b, "基础功能")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://developer.huawei.com/consumer/cn/doc/distribution/content/themes-engine-basic-function"), "访问原始链接")
        }
    )
}
