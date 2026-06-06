package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubGithubPost(): Post {
    return Post(
        "github-github",
        "代表用户使用 GitHub 应用进行身份验证 - GitHub 文档",
        "2024-02-03",
        "GitHub 文件：代表用户使用 GitHub 应用进行身份验证 - GitHub 文档",
        { b =>
            h2(b, "代表用户使用 GitHub 应用进行身份验证 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/apps/creating-github-apps/authenticating-with-a-github-app/authenticating-with-a-github-app-on-behalf-of-a-user"), "访问原始链接")
        }
    )
}
