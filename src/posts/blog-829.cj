package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog829Post(): Post {
    return Post(
        "blog-829",
        "观点",
        "[https://linux.cn/article-4721-1.html](https://linux.cn/article-4721-1.html)",
        "原文待补充：观点",
        { b =>
            h2(b, "观点")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "XDA 开发者论坛谴责小米违反 GPLv2 开源条例"), "阅读原文")
        }
    )
}
