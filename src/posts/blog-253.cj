package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog253Post(): Post {
    return Post(
        "blog-253",
        "「反复奔波的博客」又迁移到腾讯云香港了",
        "[https://blog.bill.moe/hello-tencent/](https://blog.bill.moe/hello-tencent/)",
        "原文待补充：「反复奔波的博客」又迁移到腾讯云香港了",
        { b =>
            h2(b, "「反复奔波的博客」又迁移到腾讯云香港了")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Bill Yang's Blog"), "阅读原文")
        }
    )
}
