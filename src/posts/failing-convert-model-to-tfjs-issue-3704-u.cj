package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFailingConvertModelToTfjsIssue3704UPost(): Post {
    return Post(
        "failing-convert-model-to-tfjs-issue-3704-u",
        "Failing convert model to tfjs · Issue #3704 · u...",
        "2024-01-20",
        "GitHub Issue：Failing convert model to tfjs · Issue #3",
        { b =>
            h2(b, "Failing convert model to tfjs · Issue #3704 · u...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/ultralytics/ultralytics/issues/3704"), "访问原始链接")
        }
    )
}
