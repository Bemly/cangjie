package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApplealcWorkingIntermittentlyIssue422Post(): Post {
    return Post(
        "applealc-working-intermittently-issue-422",
        "AppleALC working intermittently · Issue #422 · ...",
        "2023-08-03",
        "GitHub Issue：AppleALC working intermittently · Issue ",
        { b =>
            h2(b, "AppleALC working intermittently · Issue #422 · ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/acidanthera/bugtracker/issues/422"), "访问原始链接")
        }
    )
}
