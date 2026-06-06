package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDiscordPost(): Post {
    return Post(
        "discord",
        "Discord",
        "2023-04-15",
        "原文待补充：Discord",
        { b =>
            h2(b, "Discord")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://discord.com/invite/midjourney"), "阅读原文")
        }
    )
}
