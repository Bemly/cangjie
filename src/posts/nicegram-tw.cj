package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNicegramTwPost(): Post {
    return Post(
        "nicegram-tw",
        "解除敏感內容限制 - Nicegram TW",
        "2022-06-21",
        "原文待补充：解除敏感內容限制 - Nicegram TW",
        { b =>
            h2(b, "解除敏感內容限制 - Nicegram TW")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://nicegram.gitbook.io/zh-tw/faq/unblock"), "阅读原文")
        }
    )
}
