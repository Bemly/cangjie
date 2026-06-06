package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubGithub2Post(): Post {
    return Post(
        "github-github-2",
        "GitHub 事件类型 - GitHub 文档",
        "2024-02-04",
        "GitHub 文件：GitHub 事件类型 - GitHub 文档",
        { b =>
            h2(b, "GitHub 事件类型 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/rest/using-the-rest-api/github-event-types?apiVersion=2022-11-28"), "访问原始链接")
        }
    )
}
