package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub4Post(): Post {
    return Post(
        "github-4",
        "资源管理器 - GitHub 文档",
        "2024-02-03",
        "GitHub 文件：资源管理器 - GitHub 文档",
        { b =>
            h2(b, "资源管理器 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/graphql/overview/explorer"), "访问原始链接")
        }
    )
}
