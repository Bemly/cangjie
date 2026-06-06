package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXdaForumsPost(): Post {
    return Post(
        "xda-forums",
        "XDA Forums",
        "2023-02-08",
        "原文待补充：XDA Forums",
        { b =>
            h2(b, "XDA Forums")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://forum.xda-developers.com/"), "阅读原文")
        }
    )
}
