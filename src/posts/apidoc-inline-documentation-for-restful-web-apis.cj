package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApidocInlineDocumentationForRestfulWebApisPost(): Post {
    return Post(
        "apidoc-inline-documentation-for-restful-web-apis",
        "apiDoc - Inline Documentation for RESTful web APIs",
        "2024-01-22",
        "原文待补充：apiDoc - Inline Documentation for RESTfu",
        { b =>
            h2(b, "apiDoc - Inline Documentation for RESTful web APIs")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://apidocjs.com/"), "阅读原文")
        }
    )
}
