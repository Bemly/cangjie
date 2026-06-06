package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZeroWidthLibPost(): Post {
    return Post(
        "zero-width-lib",
        "Zero Width Lib",
        "2023-02-09",
        "原文待补充：Zero Width Lib",
        { b =>
            h2(b, "Zero Width Lib")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://yuanfux.github.io/zero-width-web/"), "阅读原文")
        }
    )
}
