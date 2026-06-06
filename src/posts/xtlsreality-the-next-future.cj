package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXtlsrealityTheNextFuturePost(): Post {
    return Post(
        "xtlsreality-the-next-future",
        "XTLS/REALITY: THE NEXT FUTURE",
        "2024-09-12",
        "GitHub 仓库：XTLS/REALITY: THE NEXT FUTURE",
        { b =>
            h2(b, "XTLS/REALITY: THE NEXT FUTURE")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/XTLS/REALITY"), "访问原始链接")
        }
    )
}
