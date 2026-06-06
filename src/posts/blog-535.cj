package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog535Post(): Post {
    return Post(
        "blog-535",
        "公共接口概述",
        "[https://doc.hostker.dev/](https://doc.hostker.dev/)",
        "原文待补充：公共接口概述",
        { b =>
            h2(b, "公共接口概述")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Hostker API 开发文档 v2"), "阅读原文")
        }
    )
}
