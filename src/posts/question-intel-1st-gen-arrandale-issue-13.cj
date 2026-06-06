package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getQuestionIntel1stGenArrandaleIssue13Post(): Post {
    return Post(
        "question-intel-1st-gen-arrandale-issue-13",
        "QUESTION: Intel 1st Gen (Arrandale) · Issue #13...",
        "2023-08-08",
        "GitHub Issue：QUESTION: Intel 1st Gen (Arrandale) · Is",
        { b =>
            h2(b, "QUESTION: Intel 1st Gen (Arrandale) · Issue #13...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/sebanc/brunch/issues/1350"), "访问原始链接")
        }
    )
}
