package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxfirefoxPost(): Post {
    return Post(
        "linuxfirefox",
        "让Linux的Firefox使用硬件加速",
        "2024-08-10",
        "原文待补充：让Linux的Firefox使用硬件加速",
        { b =>
            h2(b, "让Linux的Firefox使用硬件加速")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://techie-s.work/posts/2022/03/run-firefox-with-hardware-acceleration-on-linux/"), "阅读原文")
        }
    )
}
