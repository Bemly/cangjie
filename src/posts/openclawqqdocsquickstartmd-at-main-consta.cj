package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenclawqqdocsquickstartmdAtMainConstaPost(): Post {
    return Post(
        "openclawqqdocsquickstartmd-at-main-consta",
        "openclaw_qq/docs/quickstart.md at main · consta...",
        "2026-04-27",
        "GitHub 文件：openclaw_qq/docs/quickstart.md at main ·",
        { b =>
            h2(b, "openclaw_qq/docs/quickstart.md at main · consta...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/constansino/openclaw_qq/blob/main/docs/quickstart.md"), "访问原始链接")
        }
    )
}
