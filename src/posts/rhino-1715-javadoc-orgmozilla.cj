package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRhino1715JavadocOrgmozillaPost(): Post {
    return Post(
        "rhino-1715-javadoc-orgmozilla",
        "rhino 1.7.15 javadoc (org.mozilla)",
        "2024-08-15",
        "原文待补充：rhino 1.7.15 javadoc (org.mozilla)",
        { b =>
            h2(b, "rhino 1.7.15 javadoc (org.mozilla)")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://javadoc.io/doc/org.mozilla/rhino"), "阅读原文")
        }
    )
}
