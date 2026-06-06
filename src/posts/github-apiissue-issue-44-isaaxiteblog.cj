package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubApiissueIssue44IsaaxiteblogPost(): Post {
    return Post(
        "github-apiissue-issue-44-isaaxiteblog",
        "利用github api获取issue · Issue #44 · isaaxite/blog",
        "2024-02-03",
        "GitHub Issue：利用github api获取issue · Issue #44 · isaaxi",
        { b =>
            h2(b, "利用github api获取issue · Issue #44 · isaaxite/blog")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/isaaxite/blog/issues/44"), "访问原始链接")
        }
    )
}
