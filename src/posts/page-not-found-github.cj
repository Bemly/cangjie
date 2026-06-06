package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPageNotFoundGithubPost(): Post {
    return Post(
        "page-not-found-github",
        "Page not found · GitHub",
        "2022-09-06",
        "GitHub 仓库：Page not found · GitHub",
        { b =>
            h2(b, "Page not found · GitHub")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/SkyD666/DataSourceRepository"), "访问原始链接")
        }
    )
}
