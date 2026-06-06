package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHomeShockmicrominecraftShadersWikiPost(): Post {
    return Post(
        "home-shockmicrominecraft-shaders-wiki",
        "Home · ShockMicro/Minecraft-Shaders Wiki",
        "2025-02-14",
        "GitHub Wiki：Home · ShockMicro/Minecraft-Shaders Wiki",
        { b =>
            h2(b, "Home · ShockMicro/Minecraft-Shaders Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/ShockMicro/Minecraft-Shaders/wiki"), "访问原始链接")
        }
    )
}
