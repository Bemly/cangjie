package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMindustryPost(): Post {
    return Post(
        "mindustry",
        "Mindustry",
        "2023-01-26",
        "原文待补充：Mindustry",
        { b =>
            h2(b, "Mindustry")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mindustrygame.github.io/"), "阅读原文")
        }
    )
}
