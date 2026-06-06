package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMediaPost(): Post {
    return Post(
        "media",
        "Media",
        "[https://developers.google.com/media/vp9?hl=zh-cn](https://developers.google.com/media/vp9?hl=zh-cn)",
        "原文待补充：Media",
        { b =>
            h2(b, "Media")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Google for Developers"), "阅读原文")
        }
    )
}
