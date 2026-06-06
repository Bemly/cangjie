package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGraphqlApiGithubPost(): Post {
    return Post(
        "graphql-api-github",
        "GraphQL API 的速率限制和节点限制 - GitHub 文档",
        "2024-02-03",
        "GitHub 文件：GraphQL API 的速率限制和节点限制 - GitHub 文档",
        { b =>
            h2(b, "GraphQL API 的速率限制和节点限制 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/graphql/overview/rate-limits-and-node-limits-for-the-graphql-api"), "访问原始链接")
        }
    )
}
