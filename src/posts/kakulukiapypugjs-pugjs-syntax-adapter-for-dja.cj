package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getKakulukiapypugjsPugjsSyntaxAdapterForDjaPost(): Post {
    return Post(
        "kakulukiapypugjs-pugjs-syntax-adapter-for-dja",
        "kakulukia/pypugjs: PugJS syntax adapter for Dja...",
        "2024-08-19",
        "GitHub 仓库：kakulukia/pypugjs: PugJS syntax adapter ",
        { b =>
            h2(b, "kakulukia/pypugjs: PugJS syntax adapter for Dja...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/kakulukia/pypugjs"), "访问原始链接")
        }
    )
}
