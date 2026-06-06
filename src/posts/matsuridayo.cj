package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMatsuridayoPost(): Post {
    return Post(
        "matsuridayo",
        "MatsuriDayo",
        "2023-03-26",
        "原文待补充：MatsuriDayo",
        { b =>
            h2(b, "MatsuriDayo")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://matsuridayo.github.io/"), "阅读原文")
        }
    )
}
