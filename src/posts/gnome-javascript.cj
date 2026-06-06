package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGnomeJavascriptPost(): Post {
    return Post(
        "gnome-javascript",
        "GNOME JavaScript",
        "2025-09-06",
        "原文待补充：GNOME JavaScript",
        { b =>
            h2(b, "GNOME JavaScript")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://gjs.guide/"), "阅读原文")
        }
    )
}
