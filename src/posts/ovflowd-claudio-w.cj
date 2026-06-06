package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOvflowdClaudioWPost(): Post {
    return Post(
        "ovflowd-claudio-w",
        "ovflowd (Claudio W)",
        "2024-09-11",
        "GitHub 仓库：ovflowd (Claudio W)",
        { b =>
            h2(b, "ovflowd (Claudio W)")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/ovflowd"), "访问原始链接")
        }
    )
}
