package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArchlinuxPost(): Post {
    return Post(
        "archlinux",
        "archlinux 简明指南",
        "[https://arch.icekylin.online/](https://arch.icekylin.online/)",
        "原文待补充：archlinux 简明指南",
        { b =>
            h2(b, "archlinux 简明指南")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "archlinux 简明指南"), "阅读原文")
        }
    )
}
