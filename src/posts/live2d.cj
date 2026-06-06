package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLive2dPost(): Post {
    return Post(
        "live2d",
        "博客通用版Live2d伊斯特瓦尔发布",
        "2021-02-22",
        "原文待补充：博客通用版Live2d伊斯特瓦尔发布",
        { b =>
            h2(b, "博客通用版Live2d伊斯特瓦尔发布")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.wikimoe.com/?post=76"), "阅读原文")
        }
    )
}
