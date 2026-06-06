package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubRossning92win11songPost(): Post {
    return Post(
        "github-rossning92win11song",
        "GitHub - rossning92/win11song",
        "2021-12-21",
        "GitHub 仓库：GitHub - rossning92/win11song",
        { b =>
            h2(b, "GitHub - rossning92/win11song")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/rossning92/win11song"), "访问原始链接")
        }
    )
}
