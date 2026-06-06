package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIntroductionWritingWaylandClientsPost(): Post {
    return Post(
        "introduction-writing-wayland-clients",
        "Introduction · Writing Wayland clients",
        "2024-08-27",
        "原文待补充：Introduction · Writing Wayland clients",
        { b =>
            h2(b, "Introduction · Writing Wayland clients")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://bugaevc.gitbooks.io/writing-wayland-clients/content/"), "阅读原文")
        }
    )
}
