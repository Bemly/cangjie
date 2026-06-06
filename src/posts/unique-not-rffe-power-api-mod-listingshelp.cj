package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUniqueNotRffePowerApiModListingshelpPost(): Post {
    return Post(
        "unique-not-rffe-power-api-mod-listingshelp",
        "Unique (Not RF/FE) Power API Mod Listings/Help ...",
        "2024-06-24",
        "论坛/讨论：Unique (Not RF/FE) Power API Mod Listing",
        { b =>
            h2(b, "Unique (Not RF/FE) Power API Mod Listings/Help ...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/minecraft-mods/mods-discussion/2937710-unique-not-rf-fe-power-api-mod-listings-help"), "访问原始链接")
        }
    )
}
