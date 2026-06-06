package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog885Post(): Post {
    return Post(
        "blog-885",
        "加法器原理与优化-CSDN博客",
        "2024-12-29",
        "原文待补充：加法器原理与优化-CSDN博客",
        { b =>
            h2(b, "加法器原理与优化-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_43781229/article/details/107707994"), "阅读原文")
        }
    )
}
