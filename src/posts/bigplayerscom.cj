package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBigplayerscomPost(): Post {
    return Post(
        "bigplayerscom",
        "Bigplayers.com商城首页",
        "2023-02-10",
        "原文待补充：Bigplayers.com商城首页",
        { b =>
            h2(b, "Bigplayers.com商城首页")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://m.bigplayers.com/?inviteCode=B0005675"), "阅读原文")
        }
    )
}
