package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNapcatqqPost(): Post {
    return Post(
        "napcatqq",
        "NapCatQQ",
        "2024-08-18",
        "原文待补充：NapCatQQ",
        { b =>
            h2(b, "NapCatQQ")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://napneko.github.io/zh-CN/"), "阅读原文")
        }
    )
}
