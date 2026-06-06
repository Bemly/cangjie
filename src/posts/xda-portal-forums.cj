package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXdaPortalForumsPost(): Post {
    return Post(
        "xda-portal-forums",
        "XDA Portal & Forums",
        "2023-02-08",
        "原文待补充：XDA Portal & Forums",
        { b =>
            h2(b, "XDA Portal & Forums")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.xda-developers.com/"), "阅读原文")
        }
    )
}
