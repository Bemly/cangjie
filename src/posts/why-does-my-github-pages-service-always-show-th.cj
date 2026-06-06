package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWhyDoesMyGithubPagesServiceAlwaysShowThPost(): Post {
    return Post(
        "why-does-my-github-pages-service-always-show-th",
        "Why does my Github Pages service always show th...",
        "2024-09-06",
        "GitHub 文件：Why does my Github Pages service always ",
        { b =>
            h2(b, "Why does my Github Pages service always show th...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/orgs/community/discussions/22790"), "访问原始链接")
        }
    )
}
