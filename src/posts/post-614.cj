package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost614Post(): Post {
    return Post(
        "post-614",
        "Qt",
        "2024-08-06",
        "GitHub 仓库：Qt",
        { b =>
            h2(b, "Qt")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/qt"), "访问原始链接")
        }
    )
}
