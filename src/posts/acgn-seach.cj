package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAcgnSeachPost(): Post {
    return Post(
        "acgn-seach",
        "ACGN Seach",
        "2023-04-29",
        "原文待补充：ACGN Seach",
        { b =>
            h2(b, "ACGN Seach")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://search.acgn.es/"), "阅读原文")
        }
    )
}
