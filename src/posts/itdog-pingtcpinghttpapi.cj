package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getItdogPingtcpinghttpapiPost(): Post {
    return Post(
        "itdog-pingtcpinghttpapi",
        "ITDOG - 在线ping_在线tcping_网站测速_HTTP测速_API测速_路由追踪_...",
        "2024-04-16",
        "原文待补充：ITDOG - 在线ping_在线tcping_网站测速_HTTP测速_API测",
        { b =>
            h2(b, "ITDOG - 在线ping_在线tcping_网站测速_HTTP测速_API测速_路由追踪_...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.itdog.cn/"), "阅读原文")
        }
    )
}
