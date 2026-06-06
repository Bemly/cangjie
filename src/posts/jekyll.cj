package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJekyllPost(): Post {
    return Post(
        "jekyll",
        "Jekyll • 简单静态博客网站生成器 - 将纯文本转换为静态博客网站",
        "2024-08-22",
        "原文待补充：Jekyll • 简单静态博客网站生成器 - 将纯文本转换为静态博客网站",
        { b =>
            h2(b, "Jekyll • 简单静态博客网站生成器 - 将纯文本转换为静态博客网站")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://jekyllcn.com/"), "阅读原文")
        }
    )
}
