package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDuolabmeng6wangshangjisaoPost(): Post {
    return Post(
        "duolabmeng6wangshangjisao",
        "duolabmeng6/wangshangjisao: “网上祭扫”网络祭祀平台可为群众免费实...",
        "2022-05-11",
        "GitHub 仓库：duolabmeng6/wangshangjisao: “网上祭扫”网络祭祀平台",
        { b =>
            h2(b, "duolabmeng6/wangshangjisao: “网上祭扫”网络祭祀平台可为群众免费实...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/duolabmeng6/wangshangjisao"), "访问原始链接")
        }
    )
}
