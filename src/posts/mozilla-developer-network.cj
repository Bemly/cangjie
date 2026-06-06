package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMozillaDeveloperNetworkPost(): Post {
    return Post(
        "mozilla-developer-network",
        "Mozilla Developer Network",
        "2024-02-05",
        "原文待补充：Mozilla Developer Network",
        { b =>
            h2(b, "Mozilla Developer Network")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://developer.mozilla.org/"), "阅读原文")
        }
    )
}
