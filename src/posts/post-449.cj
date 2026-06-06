package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost449Post(): Post {
    return Post(
        "post-449",
        "风险提示",
        "2021-01-10",
        "GitHub 仓库：风险提示",
        { b =>
            h2(b, "风险提示")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/bannedbook/fanqiang"), "访问原始链接")
        }
    )
}
