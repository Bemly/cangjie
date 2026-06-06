package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMinecraftJavaMetal3ApiMinecraftPost(): Post {
    return Post(
        "minecraft-java-metal-3-api-minecraft",
        "适用于 Minecraft Java 的 Metal 3 API – Minecraft 反馈...",
        "2024-11-28",
        "原文待补充：适用于 Minecraft Java 的 Metal 3 API – Minec",
        { b =>
            h2(b, "适用于 Minecraft Java 的 Metal 3 API – Minecraft 反馈...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://feedback.minecraft.net/hc/en-us/community/posts/6780237447821-Metal-3-API-for-Minecraft-Java"), "阅读原文")
        }
    )
}
