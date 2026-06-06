package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGoCqhttpGithubTopicsPost(): Post {
    return Post(
        "go-cqhttp-github-topics",
        "go-cqhttp · GitHub Topics",
        "2023-04-12",
        "GitHub 仓库：go-cqhttp · GitHub Topics",
        { b =>
            h2(b, "go-cqhttp · GitHub Topics")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/topics/go-cqhttp?o=asc&s=stars"), "访问原始链接")
        }
    )
}
