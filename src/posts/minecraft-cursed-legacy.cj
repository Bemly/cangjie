package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMinecraftCursedLegacyPost(): Post {
    return Post(
        "minecraft-cursed-legacy",
        "Minecraft Cursed Legacy",
        "2024-06-24",
        "Minecraft Cursed Legacy - Beta 1.7.3 模组开发框架，基于 FabricMC 加载器",
        { b =>
            h2(b, "Minecraft Cursed Legacy")
            p(b, "Minecraft Cursed Legacy 是一个让 Beta 1.7.3 版本的 Minecraft 支持现代 FabricMC 模组加载器的项目。它让经典版本的模组开发变得前所未有的简单。")
            p(b, "该项目起源于 2019 年，当时 Valoeghese 看到 Blayyke 正在用 Enigma 对 1.2.5 版本进行反混淆映射，觉得这很有趣，于是启动了一个名为 Minecraft Cursed POMF 的项目来映射 Beta 1.7.3。随后项目逐渐演变成一个完整的工程，目标是在 Beta 版 Minecraft 上实现现代模组开发。")
            h2(b, "核心特性")
            p(b, "速度极快 - 该项目的构建速度堪比 Gradle，令人惊叹。")
            p(b, "稳定可靠 - 官方承诺至少每一到两年更新一次。")
            p(b, "技术现代 - 使用 chocohead 的 2019 年 Loom 分支，保证了技术栈的现代性。")
            p(b, "对于想要在经典 Minecraft 版本上开发模组的开发者来说，Cursed Legacy 提供了一个强大且易用的工具链，让 Beta 1.7.3 的模组开发像现代版本一样便捷。")
            a(b, attrs("href", "https://minecraft-cursed-legacy.github.io/"), "访问官方网站")
        }
    )
}
