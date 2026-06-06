package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenwrtGxnasPost(): Post {
    return Post(
        "openwrt-gxnas",
        "openwrt - GXNAS博客",
        "2023-09-17",
        "原文待补充：openwrt - GXNAS博客",
        { b =>
            h2(b, "openwrt - GXNAS博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://wp.gxnas.com/tag/openwrt"), "阅读原文")
        }
    )
}
