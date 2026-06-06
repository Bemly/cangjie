package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLibrewolfBrowserPost(): Post {
    return Post(
        "librewolf-browser",
        "LibreWolf Browser",
        "2021-10-16",
        "原文待补充：LibreWolf Browser",
        { b =>
            h2(b, "LibreWolf Browser")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://librewolf-community.gitlab.io/"), "阅读原文")
        }
    )
}
