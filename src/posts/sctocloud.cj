package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSctocloudPost(): Post {
    return Post(
        "sctocloud",
        "sctoCloud",
        "2021-06-08",
        "GitHub 仓库：sctoCloud",
        { b =>
            h2(b, "sctoCloud")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/sctoCloud"), "访问原始链接")
        }
    )
}
