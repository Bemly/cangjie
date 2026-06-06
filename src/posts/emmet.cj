package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEmmetPost(): Post {
    return Post(
        "emmet",
        "一篇文章搞懂【Emmet】语法规则，让前端编码健步如飞！前端人员编写网页代码时可以依靠一些编辑...",
        "2024-11-04",
        "原文待补充：一篇文章搞懂【Emmet】语法规则，让前端编码健步如飞！前端人员编写网页代码时可",
        { b =>
            h2(b, "一篇文章搞懂【Emmet】语法规则，让前端编码健步如飞！前端人员编写网页代码时可以依靠一些编辑...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://juejin.cn/post/7018567571876102151"), "阅读原文")
        }
    )
}
