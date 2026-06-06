package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHexoActionActionsGithubMarketplacePost(): Post {
    return Post(
        "hexo-action-actions-github-marketplace",
        "Hexo Action · Actions · GitHub Marketplace",
        "2024-02-02",
        "GitHub Marketplace：Hexo Action · Actions · GitHub Marketpla",
        { b =>
            h2(b, "Hexo Action · Actions · GitHub Marketplace")
            p(b, "此链接为 GitHub Marketplace，非博客文章。")
            a(b, attrs("href", "https://github.com/marketplace/actions/hexo-action"), "访问原始链接")
        }
    )
}
