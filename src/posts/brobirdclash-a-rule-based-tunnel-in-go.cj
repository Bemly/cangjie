package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBrobirdclashARuleBasedTunnelInGoPost(): Post {
    return Post(
        "brobirdclash-a-rule-based-tunnel-in-go",
        "BROBIRD/clash: A rule-based tunnel in Go.",
        "2022-06-03",
        "GitHub 仓库：BROBIRD/clash: A rule-based tunnel in Go",
        { b =>
            h2(b, "BROBIRD/clash: A rule-based tunnel in Go.")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/BROBIRD/clash"), "访问原始链接")
        }
    )
}
