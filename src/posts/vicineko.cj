package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVicinekoPost(): Post {
    return Post(
        "vicineko",
        "ViciNeko – 一番魂",
        "2022-02-08",
        "原文待补充：ViciNeko – 一番魂",
        { b =>
            h2(b, "ViciNeko – 一番魂")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://yifanhunaa.com/archives/tag/vicineko"), "阅读原文")
        }
    )
}
