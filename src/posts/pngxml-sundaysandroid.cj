package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPngxmlSundaysandroidPost(): Post {
    return Post(
        "pngxml-sundaysandroid",
        "关于图片格式png与xml的真实转换 - sundaysandroid - 博客园",
        "2024-10-03",
        "原文待补充：关于图片格式png与xml的真实转换 - sundaysandroid - 博客",
        { b =>
            h2(b, "关于图片格式png与xml的真实转换 - sundaysandroid - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/sundaysandroid/articles/13637650.html"), "阅读原文")
        }
    )
}
