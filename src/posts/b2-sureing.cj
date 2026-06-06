package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB2SureingPost(): Post {
    return Post(
        "b2-sureing",
        "b站2压后参数 - Sureing - 博客园",
        "2024-08-12",
        "原文待补充：b站2压后参数 - Sureing - 博客园",
        { b =>
            h2(b, "b站2压后参数 - Sureing - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/pengpengboshi/p/18161870"), "阅读原文")
        }
    )
}
