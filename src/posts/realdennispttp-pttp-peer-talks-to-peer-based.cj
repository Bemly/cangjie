package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRealdennispttpPttpPeerTalksToPeerBasedPost(): Post {
    return Post(
        "realdennispttp-pttp-peer-talks-to-peer-based",
        "realdennis/PTTP: PTTP: Peer talks to Peer based...",
        "2024-01-14",
        "GitHub 仓库：realdennis/PTTP: PTTP: Peer talks to Pee",
        { b =>
            h2(b, "realdennis/PTTP: PTTP: Peer talks to Peer based...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/realdennis/PTTP"), "访问原始链接")
        }
    )
}
