package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDiscord2Post(): Post {
    return Post(
        "discord-2",
        "Discord",
        "2023-04-23",
        "原文待补充：Discord",
        { b =>
            h2(b, "Discord")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://discord.com/invite/RnRnYcEc7J"), "阅读原文")
        }
    )
}
