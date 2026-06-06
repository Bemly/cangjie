package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCdnPost(): Post {
    return Post(
        "cdn",
        "双层CDN接入，防止回源病 - 忆梦小站",
        "2024-09-15",
        "原文待补充：双层CDN接入，防止回源病 - 忆梦小站",
        { b =>
            h2(b, "双层CDN接入，防止回源病 - 忆梦小站")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.onyi.net/archives/92.html"), "阅读原文")
        }
    )
}
