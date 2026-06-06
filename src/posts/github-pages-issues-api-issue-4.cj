package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubPagesIssuesApiIssue4Post(): Post {
    return Post(
        "github-pages-issues-api-issue-4",
        "使用github pages + issues + api建立个人博客 · Issue #4 ...",
        "2024-02-02",
        "GitHub Issue：使用github pages + issues + api建立个人博客 · Is",
        { b =>
            h2(b, "使用github pages + issues + api建立个人博客 · Issue #4 ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/martin-liu/martin-liu.github.io/issues/4"), "访问原始链接")
        }
    )
}
