package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApi2Post(): Post {
    return Post(
        "api-2",
        "API",
        "[https://docs.go-cqhttp.org/api/#%E7%BE%A4%E5%8C%BF%E5%90%...](https://docs.go-cqhttp.org/api/#%E7%BE%A4%E5%8C%BF%E5%90%8D%E7%94%A8%E6%88%B7%E7%A6%81%E8%A8%80)",
        "原文待补充：API",
        { b =>
            h2(b, "API")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "go-cqhttp 帮助中心"), "阅读原文")
        }
    )
}
