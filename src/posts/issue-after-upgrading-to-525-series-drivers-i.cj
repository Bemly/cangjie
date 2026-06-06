package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIssueAfterUpgradingTo525SeriesDriversIPost(): Post {
    return Post(
        "issue-after-upgrading-to-525-series-drivers-i",
        "Issue after upgrading to 525 series drivers · I...",
        "2024-08-12",
        "GitHub Issue：Issue after upgrading to 525 series driv",
        { b =>
            h2(b, "Issue after upgrading to 525 series drivers · I...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/elFarto/nvidia-vaapi-driver/issues/126"), "访问原始链接")
        }
    )
}
