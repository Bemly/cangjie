package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApiPost(): Post {
    return Post(
        "api",
        "API",
        "[https://docs.go-cqhttp.org/api/#%E5%9F%BA%E7%A1%80%E4%BC%...](https://docs.go-cqhttp.org/api/#%E5%9F%BA%E7%A1%80%E4%BC%A0%E8%BE%93)",
        "原文待补充：API",
        { b =>
            h2(b, "API")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "go-cqhttp 帮助中心"), "阅读原文")
        }
    )
}
