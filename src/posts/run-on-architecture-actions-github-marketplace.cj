package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRunOnArchitectureActionsGithubMarketplacePost(): Post {
    return Post(
        "run-on-architecture-actions-github-marketplace",
        "Run on architecture · Actions · GitHub Marketplace",
        "2024-08-19",
        "GitHub Marketplace：Run on architecture · Actions · GitHub M",
        { b =>
            h2(b, "Run on architecture · Actions · GitHub Marketplace")
            p(b, "此链接为 GitHub Marketplace，非博客文章。")
            a(b, attrs("href", "https://github.com/marketplace/actions/run-on-architecture"), "访问原始链接")
        }
    )
}
