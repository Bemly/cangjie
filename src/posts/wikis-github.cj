package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWikisGithubPost(): Post {
    return Post(
        "wikis-github",
        "关于 wikis - GitHub 文档",
        "2024-02-04",
        "GitHub 文件：关于 wikis - GitHub 文档",
        { b =>
            h2(b, "关于 wikis - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/communities/documenting-your-project-with-wikis/about-wikis"), "访问原始链接")
        }
    )
}
