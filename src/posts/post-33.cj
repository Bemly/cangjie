package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost33Post(): Post {
    return Post(
        "post-33",
        "主题中心-动态引擎更新说明",
        "2021-05-11",
        "官方文档/工具：主题中心-动态引擎更新说明",
        { b =>
            h2(b, "主题中心-动态引擎更新说明")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://developer.huawei.com/consumer/cn/doc/distribution/content/engineupdatedescription-0000001081652457"), "访问原始链接")
        }
    )
}
