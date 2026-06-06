package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getEjsEmbeddedJavascriptTemplatesPost(): Post {
    return Post(
        "ejs-embedded-javascript-templates",
        "EJS -- Embedded JavaScript templates",
        "2024-08-19",
        "原文待补充：EJS -- Embedded JavaScript templates",
        { b =>
            h2(b, "EJS -- Embedded JavaScript templates")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://ejs.co/"), "阅读原文")
        }
    )
}
