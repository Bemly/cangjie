package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIwlwifiLinuxWirelessDocumentationPost(): Post {
    return Post(
        "iwlwifi-linux-wireless-documentation",
        "iwlwifi — Linux Wireless documentation",
        "2025-05-15",
        "官方文档/工具：iwlwifi — Linux Wireless documentation",
        { b =>
            h2(b, "iwlwifi — Linux Wireless documentation")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://wireless.docs.kernel.org/en/latest/en/users/drivers/iwlwifi.html"), "访问原始链接")
        }
    )
}
