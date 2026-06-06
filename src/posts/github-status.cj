package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubStatusPost(): Post {
    return Post(
        "github-status",
        "GitHub Status",
        "2024-12-31",
        "原文待补充：GitHub Status",
        { b =>
            h2(b, "GitHub Status")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.githubstatus.com/"), "阅读原文")
        }
    )
}
