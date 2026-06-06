package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRhinoJavascriptInJavaPost(): Post {
    return Post(
        "rhino-javascript-in-java",
        "Rhino: JavaScript in Java",
        "[http://mozilla.github.io/rhino/](http://mozilla.github.io/rhino/)",
        "原文待补充：Rhino: JavaScript in Java",
        { b =>
            h2(b, "Rhino: JavaScript in Java")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "rhino"), "阅读原文")
        }
    )
}
