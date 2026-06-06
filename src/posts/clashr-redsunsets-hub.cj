package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getClashrRedsunsetsHubPost(): Post {
    return Post(
        "clashr-redsunsets-hub",
        "Clash(R)从入门到入坟 - Redsunsets Hub",
        "2022-06-03",
        "原文待补充：Clash(R)从入门到入坟 - Redsunsets Hub",
        { b =>
            h2(b, "Clash(R)从入门到入坟 - Redsunsets Hub")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.rssins.net/archives/194"), "阅读原文")
        }
    )
}
