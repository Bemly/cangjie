package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCHeavyWatalPost(): Post {
    return Post(
        "c-heavy-watal",
        "C++高速化 - Heavy Watal",
        "2025-04-06",
        "原文待补充：C++高速化 - Heavy Watal",
        { b =>
            h2(b, "C++高速化 - Heavy Watal")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://heavywatal.github.io/cxx/speed.html"), "阅读原文")
        }
    )
}
