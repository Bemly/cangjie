package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMinecraftdeveloperguideMinecraftDeveloperCh3Post(): Post {
    return Post(
        "minecraftdeveloperguide-minecraft-developer-ch-3",
        "MinecraftDeveloperGuide: Minecraft developer Ch...",
        "2020-02-02",
        "Gitee 页面：MinecraftDeveloperGuide: Minecraft devel",
        { b =>
            h2(b, "MinecraftDeveloperGuide: Minecraft developer Ch...")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/liuytao/MinecraftDeveloperGuide?_from=gitee_search"), "访问原始链接")
        }
    )
}
