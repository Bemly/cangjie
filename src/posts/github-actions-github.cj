package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubActionsGithubPost(): Post {
    return Post(
        "github-actions-github",
        "了解 GitHub Actions - GitHub 文档",
        "2024-02-02",
        "GitHub 文件：了解 GitHub Actions - GitHub 文档",
        { b =>
            h2(b, "了解 GitHub Actions - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/actions/learn-github-actions/understanding-github-actions"), "访问原始链接")
        }
    )
}
