package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMydanmuPost(): Post {
    return Post(
        "mydanmu",
        "MY_DANMU",
        "2022-07-10",
        "原文待补充：MY_DANMU",
        { b =>
            h2(b, "MY_DANMU")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://api.danmu.oyyds.top/"), "阅读原文")
        }
    )
}
