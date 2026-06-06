package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDiscord3Post(): Post {
    return Post(
        "discord-3",
        "Discord",
        "2024-08-16",
        "原文待补充：Discord",
        { b =>
            h2(b, "Discord")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://discord.com/invite/MQ68WUS"), "阅读原文")
        }
    )
}
