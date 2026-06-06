package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWebvttApiWebApiPost(): Post {
    return Post(
        "webvtt-api-web-api",
        "WebVTT API - Web API",
        "[https://developer.mozilla.org/en-US/docs/Web/API/WebVTT_API](https://developer.mozilla.org/en-US/docs/Web/API/WebVTT_API)",
        "原文待补充：WebVTT API - Web API",
        { b =>
            h2(b, "WebVTT API - Web API")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "MDN --- WebVTT API - Web..."), "阅读原文")
        }
    )
}
