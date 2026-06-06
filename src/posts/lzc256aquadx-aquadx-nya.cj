package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLzc256aquadxAquadxNyaPost(): Post {
    return Post(
        "lzc256aquadx-aquadx-nya",
        "lzc256/AquaDX - AquaDX - Nya",
        "2024-09-11",
        "原文待补充：lzc256/AquaDX - AquaDX - Nya",
        { b =>
            h2(b, "lzc256/AquaDX - AquaDX - Nya")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://git.lzc256.com/lzc256/AquaDX"), "阅读原文")
        }
    )
}
