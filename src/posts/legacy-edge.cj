package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLegacyEdgePost(): Post {
    return Post(
        "legacy-edge",
        "Legacy Edge",
        "2021-08-08",
        "GitHub 仓库：Legacy Edge",
        { b =>
            h2(b, "Legacy Edge")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/Legacy-Edge"), "访问原始链接")
        }
    )
}
