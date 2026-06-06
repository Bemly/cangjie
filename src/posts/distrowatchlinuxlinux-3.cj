package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDistrowatchlinuxlinux3Post(): Post {
    return Post(
        "distrowatchlinuxlinux-3",
        "Distrowatch的Linux排行榜真的有意义吗？谁才是Linux的真正老大？",
        "[https://www.lulinux.com/archives/5143](https://www.lulinux.com/archives/5143)",
        "原文待补充：Distrowatch的Linux排行榜真的有意义吗？谁才是Linux的真正老大",
        { b =>
            h2(b, "Distrowatch的Linux排行榜真的有意义吗？谁才是Linux的真正老大？")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "撸L..."), "阅读原文")
        }
    )
}
