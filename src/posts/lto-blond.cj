package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLtoBlondPost(): Post {
    return Post(
        "lto-blond",
        "【代码札记】LTO磁带归档管理 - 天空Blond",
        "2024-10-31",
        "原文待补充：【代码札记】LTO磁带归档管理 - 天空Blond",
        { b =>
            h2(b, "【代码札记】LTO磁带归档管理 - 天空Blond")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://skyblond.info/archives/1058.html"), "阅读原文")
        }
    )
}
