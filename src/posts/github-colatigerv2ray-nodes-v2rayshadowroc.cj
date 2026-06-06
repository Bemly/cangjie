package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubColatigerv2rayNodesV2rayshadowrocPost(): Post {
    return Post(
        "github-colatigerv2ray-nodes-v2rayshadowroc",
        "GitHub - colatiger/v2ray-nodes: v2ray,shadowroc...",
        "2022-04-24",
        "GitHub 仓库：GitHub - colatiger/v2ray-nodes: v2ray,sh",
        { b =>
            h2(b, "GitHub - colatiger/v2ray-nodes: v2ray,shadowroc...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/colatiger/v2ray-nodes"), "访问原始链接")
        }
    )
}
