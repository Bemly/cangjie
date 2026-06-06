package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGraphqlPost(): Post {
    return Post(
        "graphql",
        "一文看懂 GraphQL 是什么？都有哪些优缺点 - 红帽",
        "2024-02-03",
        "原文待补充：一文看懂 GraphQL 是什么？都有哪些优缺点 - 红帽",
        { b =>
            h2(b, "一文看懂 GraphQL 是什么？都有哪些优缺点 - 红帽")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.redhat.com/zh/topics/api/what-is-graphql"), "阅读原文")
        }
    )
}
