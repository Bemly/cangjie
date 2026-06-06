package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlackholePost(): Post {
    return Post(
        "blackhole",
        "BlackHole",
        "2023-04-19",
        "原文待补充：BlackHole",
        { b =>
            h2(b, "BlackHole")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://sangwan5688.github.io/"), "阅读原文")
        }
    )
}
