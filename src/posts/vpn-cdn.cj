package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVpnCdnPost(): Post {
    return Post(
        "vpn-cdn",
        "目前有大佬自建 vpn 不套 cdn 的吗 - V2EX",
        "2024-09-11",
        "论坛/讨论：目前有大佬自建 vpn 不套 cdn 的吗 - V2EX",
        { b =>
            h2(b, "目前有大佬自建 vpn 不套 cdn 的吗 - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://v2ex.com/t/897864"), "访问原始链接")
        }
    )
}
