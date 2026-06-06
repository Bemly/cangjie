package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheHomebrewLauncher3dsPost(): Post {
    return Post(
        "the-homebrew-launcher-3ds",
        "The Homebrew Launcher - 3DS",
        "2025-07-03",
        "原文待补充：The Homebrew Launcher - 3DS",
        { b =>
            h2(b, "The Homebrew Launcher - 3DS")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://smealum.github.io/3ds/"), "阅读原文")
        }
    )
}
