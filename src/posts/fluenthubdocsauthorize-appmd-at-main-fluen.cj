package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFluenthubdocsauthorizeAppmdAtMainFluenPost(): Post {
    return Post(
        "fluenthubdocsauthorize-appmd-at-main-fluen",
        "FluentHub/docs/authorize-app.md at main · Fluen...",
        "2024-02-03",
        "GitHub 文件：FluentHub/docs/authorize-app.md at main ",
        { b =>
            h2(b, "FluentHub/docs/authorize-app.md at main · Fluen...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/FluentHub/FluentHub/blob/main/docs/authorize-app.md"), "访问原始链接")
        }
    )
}
