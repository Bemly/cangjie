package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRestApiGithubPost(): Post {
    return Post(
        "rest-api-github",
        "REST API 的速率限制 - GitHub 文档",
        "2024-02-03",
        "GitHub 文件：REST API 的速率限制 - GitHub 文档",
        { b =>
            h2(b, "REST API 的速率限制 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/rest/using-the-rest-api/rate-limits-for-the-rest-api?apiVersion=2022-11-28"), "访问原始链接")
        }
    )
}
