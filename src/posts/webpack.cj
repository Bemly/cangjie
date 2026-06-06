package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWebpackPost(): Post {
    return Post(
        "webpack",
        "webpack",
        "2023-04-21",
        "原文待补充：webpack",
        { b =>
            h2(b, "webpack")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://webpack.docschina.org/"), "阅读原文")
        }
    )
}
