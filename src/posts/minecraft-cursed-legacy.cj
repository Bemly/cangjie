package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMinecraftCursedLegacyPost(): Post {
    return Post(
        "minecraft-cursed-legacy",
        "Minecraft Cursed Legacy",
        "2024-06-24",
        "网站主页：Minecraft Cursed Legacy",
        { b =>
            h2(b, "Minecraft Cursed Legacy")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://minecraft-cursed-legacy.github.io/"), "访问原始链接")
        }
    )
}
