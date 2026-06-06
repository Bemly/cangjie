package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSynologyArchiveDownloadSiteIndexOfDown2Post(): Post {
    return Post(
        "synology-archive-download-site-index-of-down-2",
        "Synology Archive Download Site - Index of /down...",
        "2023-04-26",
        "原文待补充：Synology Archive Download Site - Index o",
        { b =>
            h2(b, "Synology Archive Download Site - Index of /down...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://archive.synology.cn/download/Package"), "阅读原文")
        }
    )
}
