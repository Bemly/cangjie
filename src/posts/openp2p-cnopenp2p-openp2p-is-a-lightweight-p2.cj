package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenp2pCnopenp2pOpenp2pIsALightweightP2Post(): Post {
    return Post(
        "openp2p-cnopenp2p-openp2p-is-a-lightweight-p2",
        "openp2p-cn/openp2p: OpenP2P is a lightweight P2...",
        "2024-01-14",
        "GitHub 文件：openp2p-cn/openp2p: OpenP2P is a lightwe",
        { b =>
            h2(b, "openp2p-cn/openp2p: OpenP2P is a lightweight P2...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/openp2p-cn/openp2p/tree/master"), "访问原始链接")
        }
    )
}
