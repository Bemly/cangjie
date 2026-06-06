package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGitBookPost(): Post {
    return Post(
        "git-book",
        "Git - Book",
        "2024-02-03",
        "官方文档/工具：Git - Book",
        { b =>
            h2(b, "Git - Book")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://git-scm.com/book/zh/v2"), "访问原始链接")
        }
    )
}
