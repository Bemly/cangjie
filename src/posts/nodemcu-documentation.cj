package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodemcuDocumentationPost(): Post {
    return Post(
        "nodemcu-documentation",
        "NodeMCU Documentation",
        "2024-10-18",
        "原文待补充：NodeMCU Documentation",
        { b =>
            h2(b, "NodeMCU Documentation")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://nodemcu.readthedocs.io/en/release/"), "阅读原文")
        }
    )
}
