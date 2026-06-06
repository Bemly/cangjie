package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFridaRuilinsCodingNotesPost(): Post {
    return Post(
        "frida-ruilins-coding-notes",
        "Frida入门教程 - Ruilin's coding notes",
        "2024-11-27",
        "原文待补充：Frida入门教程 - Ruilin's coding notes",
        { b =>
            h2(b, "Frida入门教程 - Ruilin's coding notes")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://ruilin.github.io/blog/2024/08/01/Frida.html"), "阅读原文")
        }
    )
}
