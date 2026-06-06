package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGenact141Post(): Post {
    return Post(
        "genact-141",
        "genact 1.4.1",
        "2024-11-19",
        "原文待补充：genact 1.4.1",
        { b =>
            h2(b, "genact 1.4.1")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://svenstaro.github.io/genact/"), "阅读原文")
        }
    )
}
