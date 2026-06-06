package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPerformanceZhCnJustarchinetarchisteamfarmPost(): Post {
    return Post(
        "performance-zh-cn-justarchinetarchisteamfarm",
        "Performance zh CN · JustArchiNET/ArchiSteamFarm...",
        "2026-03-22",
        "GitHub Wiki：Performance zh CN · JustArchiNET/ArchiSt",
        { b =>
            h2(b, "Performance zh CN · JustArchiNET/ArchiSteamFarm...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/JustArchiNET/ArchiSteamFarm/wiki/Performance-zh-CN"), "访问原始链接")
        }
    )
}
