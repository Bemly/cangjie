package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodejsApiDuckdbPost(): Post {
    return Post(
        "nodejs-api-duckdb",
        "Node.js API – DuckDB",
        "2024-08-17",
        "原文待补充：Node.js API – DuckDB",
        { b =>
            h2(b, "Node.js API – DuckDB")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://duckdb.org/docs/api/nodejs/overview.html"), "阅读原文")
        }
    )
}
