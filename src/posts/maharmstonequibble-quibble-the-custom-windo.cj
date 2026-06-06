package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMaharmstonequibbleQuibbleTheCustomWindoPost(): Post {
    return Post(
        "maharmstonequibble-quibble-the-custom-windo",
        "maharmstone/quibble: Quibble - the custom Windo...",
        "2023-01-17",
        "GitHub 仓库：maharmstone/quibble: Quibble - the custo",
        { b =>
            h2(b, "maharmstone/quibble: Quibble - the custom Windo...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/maharmstone/quibble"), "访问原始链接")
        }
    )
}
