package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWaydroidPost(): Post {
    return Post(
        "waydroid",
        "Waydroid",
        "[https://waydro.id/](https://waydro.id/)",
        "原文待补充：Waydroid",
        { b =>
            h2(b, "Waydroid")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Android in a Linux container"), "阅读原文")
        }
    )
}
