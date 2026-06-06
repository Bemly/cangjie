package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMediaMimeSupportPost(): Post {
    return Post(
        "media-mime-support",
        "Media MIME Support",
        "2024-08-13",
        "原文待补充：Media MIME Support",
        { b =>
            h2(b, "Media MIME Support")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cconcolato.github.io/media-mime-support/"), "阅读原文")
        }
    )
}
