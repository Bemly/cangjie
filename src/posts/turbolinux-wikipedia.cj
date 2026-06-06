package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTurbolinuxWikipediaPost(): Post {
    return Post(
        "turbolinux-wikipedia",
        "Turbolinux - Wikipedia",
        "2024-08-10",
        "原文待补充：Turbolinux - Wikipedia",
        { b =>
            h2(b, "Turbolinux - Wikipedia")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://en.wikipedia.org/wiki/Turbolinux"), "阅读原文")
        }
    )
}
