package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApidocBmclapi000Post(): Post {
    return Post(
        "apidoc-bmclapi-000",
        "apiDoc: BMCLAPI - 0.0.0",
        "2024-11-24",
        "原文待补充：apiDoc: BMCLAPI - 0.0.0",
        { b =>
            h2(b, "apiDoc: BMCLAPI - 0.0.0")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://bmclapidoc.bangbang93.com/"), "阅读原文")
        }
    )
}
