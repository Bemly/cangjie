package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getServerListKinnaynintendoclientsWikiPost(): Post {
    return Post(
        "server-list-kinnaynintendoclients-wiki",
        "Server List · kinnay/NintendoClients Wiki",
        "2026-04-23",
        "GitHub Wiki：Server List · kinnay/NintendoClients Wik",
        { b =>
            h2(b, "Server List · kinnay/NintendoClients Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/kinnay/NintendoClients/wiki/Server-List"), "访问原始链接")
        }
    )
}
