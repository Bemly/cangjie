package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAmplerLauncherPost(): Post {
    return Post(
        "ampler-launcher",
        "Ampler Launcher",
        "2026-03-31",
        "原文待补充：Ampler Launcher",
        { b =>
            h2(b, "Ampler Launcher")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://irv77.github.io/AmplerLauncher/"), "阅读原文")
        }
    )
}
