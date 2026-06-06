package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRhinoDebuggerPost(): Post {
    return Post(
        "rhino-debugger",
        "Rhino Debugger",
        "2024-08-15",
        "原文待补充：Rhino Debugger",
        { b =>
            h2(b, "Rhino Debugger")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www-archive.mozilla.org/rhino/debugger"), "阅读原文")
        }
    )
}
