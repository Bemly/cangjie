package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBoomworksboomsWorksPost(): Post {
    return Post(
        "boomworksbooms-works",
        "boomworks软件的最新版本（全网最新）_boom's works-CSDN博客_boom...",
        "2021-08-25",
        "原文待补充：boomworks软件的最新版本（全网最新）_boom's works-CSDN",
        { b =>
            h2(b, "boomworks软件的最新版本（全网最新）_boom's works-CSDN博客_boom...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/boomworks/article/details/113486307"), "阅读原文")
        }
    )
}
