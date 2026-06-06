package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubPagesGithubApiIssue2Post(): Post {
    return Post(
        "github-pages-github-api-issue-2",
        "利用 github pages 与 github api 搭建博客 · Issue #2 · ...",
        "2024-02-03",
        "GitHub Issue：利用 github pages 与 github api 搭建博客 · Issu",
        { b =>
            h2(b, "利用 github pages 与 github api 搭建博客 · Issue #2 · ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/eyasliu/blog/issues/2"), "访问原始链接")
        }
    )
}
