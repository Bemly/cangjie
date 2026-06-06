package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheArtOfLinearAlgebrareadmeZhCnmdAtMaPost(): Post {
    return Post(
        "the-art-of-linear-algebrareadme-zh-cnmd-at-ma",
        "The-Art-of-Linear-Algebra/README-zh-CN.md at ma...",
        "2024-06-21",
        "GitHub 文件：The-Art-of-Linear-Algebra/README-zh-CN.m",
        { b =>
            h2(b, "The-Art-of-Linear-Algebra/README-zh-CN.md at ma...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/kenjihiranabe/The-Art-of-Linear-Algebra/blob/main/README-zh-CN.md"), "访问原始链接")
        }
    )
}
