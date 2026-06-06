package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost450Post(): Post {
    return Post(
        "post-450",
        "风险提示",
        "2021-01-10",
        "GitHub Wiki：风险提示",
        { b =>
            h2(b, "风险提示")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/Alvin9999/new-pac/wiki"), "访问原始链接")
        }
    )
}
