package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMojangApiWikivgPost(): Post {
    return Post(
        "mojang-api-wikivg",
        "Mojang API - wiki.vg",
        "2024-08-28",
        "原文待补充：Mojang API - wiki.vg",
        { b =>
            h2(b, "Mojang API - wiki.vg")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wiki.vg/Mojang_API"), "阅读原文")
        }
    )
}
