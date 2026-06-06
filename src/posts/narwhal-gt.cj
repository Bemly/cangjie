package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNarwhalGtPost(): Post {
    return Post(
        "narwhal-gt",
        "Narwhal-gt",
        "2022-06-24",
        "原文待补充：Narwhal-gt",
        { b =>
            h2(b, "Narwhal-gt")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://narwhal-gt.webnode.tw/"), "阅读原文")
        }
    )
}
