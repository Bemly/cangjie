package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUnableToRegisterCoreDumpHandlerIssue4Post(): Post {
    return Post(
        "unable-to-register-core-dump-handler-issue-4",
        "unable to register core dump handler · Issue #4...",
        "2023-08-10",
        "GitHub Issue：unable to register core dump handler · I",
        { b =>
            h2(b, "unable to register core dump handler · Issue #4...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/dnschneid/crouton/issues/4135"), "访问原始链接")
        }
    )
}
