package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMinimumCommonWebPlatformApiPost(): Post {
    return Post(
        "minimum-common-web-platform-api",
        "Minimum Common Web Platform API",
        "2025-09-09",
        "原文待补充：Minimum Common Web Platform API",
        { b =>
            h2(b, "Minimum Common Web Platform API")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://min-common-api.proposal.wintertc.org/"), "阅读原文")
        }
    )
}
