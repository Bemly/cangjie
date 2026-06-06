package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHellogithubPost(): Post {
    return Post(
        "hellogithub",
        "HelloGitHub",
        "2024-02-03",
        "GitHub 文件：HelloGitHub",
        { b =>
            h2(b, "HelloGitHub")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://hellogithub.com/"), "访问原始链接")
        }
    )
}
