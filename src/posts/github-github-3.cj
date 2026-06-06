package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubGithub3Post(): Post {
    return Post(
        "github-github-3",
        "GitHub 应用的速率限制 - GitHub 文档",
        "2024-08-15",
        "GitHub 文件：GitHub 应用的速率限制 - GitHub 文档",
        { b =>
            h2(b, "GitHub 应用的速率限制 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/apps/creating-github-apps/registering-a-github-app/rate-limits-for-github-apps"), "访问原始链接")
        }
    )
}
