package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReactivexPost(): Post {
    return Post(
        "reactivex",
        "ReactiveX",
        "2024-12-27",
        "原文待补充：ReactiveX",
        { b =>
            h2(b, "ReactiveX")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://reactivex.io/"), "阅读原文")
        }
    )
}
