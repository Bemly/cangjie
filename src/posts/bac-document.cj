package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBacDocumentPost(): Post {
    return Post(
        "bac-document",
        "BAC Document",
        "2023-04-25",
        "原文待补充：BAC Document",
        { b =>
            h2(b, "BAC Document")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://socialsisteryi.github.io/bilibili-API-collect/"), "阅读原文")
        }
    )
}
