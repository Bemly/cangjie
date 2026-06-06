package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubOslookclashFreenodeClashConfigPost(): Post {
    return Post(
        "github-oslookclash-freenode-clash-config",
        "GitHub - oslook/clash-freenode: 🔥[Clash Config]...",
        "2022-04-06",
        "GitHub 仓库：GitHub - oslook/clash-freenode: 🔥[Clash ",
        { b =>
            h2(b, "GitHub - oslook/clash-freenode: 🔥[Clash Config]...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/oslook/clash-freenode"), "访问原始链接")
        }
    )
}
