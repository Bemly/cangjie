package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost32Post(): Post {
    return Post(
        "post-32",
        "在线提单_问题反馈-华为开发者联盟",
        "2021-05-11",
        "官方文档/工具：在线提单_问题反馈-华为开发者联盟",
        { b =>
            h2(b, "在线提单_问题反馈-华为开发者联盟")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://developer.huawei.com/consumer/cn/doc/"), "访问原始链接")
        }
    )
}
