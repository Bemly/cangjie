package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFaqZhCnJustarchinetarchisteamfarmWikiPost(): Post {
    return Post(
        "faq-zh-cn-justarchinetarchisteamfarm-wiki",
        "FAQ zh CN · JustArchiNET/ArchiSteamFarm Wiki",
        "2026-03-22",
        "GitHub Wiki：FAQ zh CN · JustArchiNET/ArchiSteamFarm ",
        { b =>
            h2(b, "FAQ zh CN · JustArchiNET/ArchiSteamFarm Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/JustArchiNET/ArchiSteamFarm/wiki/FAQ-zh-CN"), "访问原始链接")
        }
    )
}
