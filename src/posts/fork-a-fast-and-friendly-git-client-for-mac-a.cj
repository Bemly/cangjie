package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getForkAFastAndFriendlyGitClientForMacAPost(): Post {
    return Post(
        "fork-a-fast-and-friendly-git-client-for-mac-a",
        "Fork - a fast and friendly git client for Mac a...",
        "2024-11-19",
        "原文待补充：Fork - a fast and friendly git client fo",
        { b =>
            h2(b, "Fork - a fast and friendly git client for Mac a...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://git-fork.com/"), "阅读原文")
        }
    )
}
