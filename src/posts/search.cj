package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSearchPost(): Post {
    return Post(
        "search",
        "Search",
        "2024-10-02",
        "原文待补充：Search",
        { b =>
            h2(b, "Search")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://consumer.huawei.com/en/opensource/detail/"), "阅读原文")
        }
    )
}
