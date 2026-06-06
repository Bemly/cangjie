package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCommonCaDatabaseByTheLinuxFoundationPost(): Post {
    return Post(
        "common-ca-database-by-the-linux-foundation",
        "Common CA Database by the Linux Foundation",
        "2026-02-16",
        "原文待补充：Common CA Database by the Linux Foundati",
        { b =>
            h2(b, "Common CA Database by the Linux Foundation")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.ccadb.org/resources"), "阅读原文")
        }
    )
}
