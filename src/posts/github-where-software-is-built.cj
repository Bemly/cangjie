package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubWhereSoftwareIsBuiltPost(): Post {
    return Post(
        "github-where-software-is-built",
        "GitHub · Where software is built",
        "2024-02-02",
        "GitHub 仓库：GitHub · Where software is built",
        { b =>
            h2(b, "GitHub · Where software is built")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/ChenPi12/server-test"), "访问原始链接")
        }
    )
}
