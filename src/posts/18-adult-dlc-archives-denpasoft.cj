package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB18adultdlcarchivesdenpasoftPost(): Post {
    return Post(
        "18-adult-dlc-archives-denpasoft",
        "18+ Adult DLC Archives - Denpasoft",
        "2026-03-13",
        "原文待补充：18+ Adult DLC Archives - Denpasoft",
        { b =>
            h2(b, "18+ Adult DLC Archives - Denpasoft")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://denpasoft.com/product-category/all-dlc/dlc-18/"), "阅读原文")
        }
    )
}
