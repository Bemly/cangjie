package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascriptTechnologiesOverviewJavascriptPost(): Post {
    return Post(
        "javascript-technologies-overview-javascript",
        "JavaScript technologies overview - JavaScript \\...",
        "2024-08-15",
        "原文待补充：JavaScript technologies overview - JavaS",
        { b =>
            h2(b, "JavaScript technologies overview - JavaScript \\...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/JavaScript_technologies_overview"), "阅读原文")
        }
    )
}
