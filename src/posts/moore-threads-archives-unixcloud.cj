package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMooreThreadsArchivesUnixcloudPost(): Post {
    return Post(
        "moore-threads-archives-unixcloud",
        "Moore Threads Archives - Unixcloud",
        "2023-07-03",
        "原文待补充：Moore Threads Archives - Unixcloud",
        { b =>
            h2(b, "Moore Threads Archives - Unixcloud")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.unixcloud.ltd/product-category/mtt/"), "阅读原文")
        }
    )
}
