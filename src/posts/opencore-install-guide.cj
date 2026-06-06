package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpencoreInstallGuidePost(): Post {
    return Post(
        "opencore-install-guide",
        "OpenCore Install Guide",
        "2023-08-03",
        "原文待补充：OpenCore Install Guide",
        { b =>
            h2(b, "OpenCore Install Guide")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://dortania.github.io/OpenCore-Install-Guide/"), "阅读原文")
        }
    )
}
