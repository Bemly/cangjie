package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog210Post(): Post {
    return Post(
        "blog-210",
        "3D图形渲染技术 - 掘金",
        "2023-05-09",
        "原文待补充：3D图形渲染技术 - 掘金",
        { b =>
            h2(b, "3D图形渲染技术 - 掘金")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://juejin.cn/post/7169775665825349663"), "阅读原文")
        }
    )
}
