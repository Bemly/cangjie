package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpencoreLegacyPatcherPost(): Post {
    return Post(
        "opencore-legacy-patcher",
        "OpenCore Legacy Patcher",
        "2024-02-14",
        "原文待补充：OpenCore Legacy Patcher",
        { b =>
            h2(b, "OpenCore Legacy Patcher")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://dortania.github.io/OpenCore-Legacy-Patcher/"), "阅读原文")
        }
    )
}
