package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getClashMihomoTailscaleZerotierAppPost(): Post {
    return Post(
        "clash-mihomo-tailscale-zerotier-app",
        "安卓平台上 Clash / Mihomo 与 Tailscale / Zerotier APP...",
        "2025-05-15",
        "论坛/讨论：安卓平台上 Clash / Mihomo 与 Tailscale / Zerot",
        { b =>
            h2(b, "安卓平台上 Clash / Mihomo 与 Tailscale / Zerotier APP...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://linux.do/t/topic/243526"), "访问原始链接")
        }
    )
}
