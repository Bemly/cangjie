package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVaapiPost(): Post {
    return Post(
        "vaapi",
        "vaapi",
        "2024-08-12",
        "原文待补充：vaapi",
        { b =>
            h2(b, "vaapi")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.freedesktop.org/wiki/Software/vaapi/#driversback-endsthatimplementva-api"), "阅读原文")
        }
    )
}
