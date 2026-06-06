package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSearchAndQueryPost(): Post {
    return Post(
        "search-and-query",
        "Search and query",
        "[https://redis.io/docs/latest/develop/interact/search-and-...](https://redis.io/docs/latest/develop/interact/search-and-query/)",
        "原文待补充：Search and query",
        { b =>
            h2(b, "Search and query")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Docs"), "阅读原文")
        }
    )
}
