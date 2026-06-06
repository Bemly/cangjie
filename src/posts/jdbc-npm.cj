package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJdbcNpmPost(): Post {
    return Post(
        "jdbc-npm",
        "jdbc - npm",
        "2024-08-17",
        "原文待补充：jdbc - npm",
        { b =>
            h2(b, "jdbc - npm")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.npmjs.com/package/jdbc"), "阅读原文")
        }
    )
}
