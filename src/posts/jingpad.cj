package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJingpadPost(): Post {
    return Post(
        "jingpad",
        "JingPad",
        "[https://jingos-official.myshopify.com/](https://jingos-official.myshopify.com/)",
        "原文待补充：JingPad",
        { b =>
            h2(b, "JingPad")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "The Linux Tablet – JingOS"), "阅读原文")
        }
    )
}
