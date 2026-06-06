package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getChromeDnschneidcroutonWikiPost(): Post {
    return Post(
        "chrome-dnschneidcrouton-wiki",
        "构建 Chrome 操作系统内核和内核模块 · dnschneid/crouton Wiki",
        "2023-08-10",
        "GitHub Wiki：构建 Chrome 操作系统内核和内核模块 · dnschneid/crouto",
        { b =>
            h2(b, "构建 Chrome 操作系统内核和内核模块 · dnschneid/crouton Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/dnschneid/crouton/wiki/Build-chrome-os-kernel-and-kernel-modules#wiki-pages-box"), "访问原始链接")
        }
    )
}
