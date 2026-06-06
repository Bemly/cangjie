package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxTtyptsLinuxPost(): Post {
    return Post(
        "linux-ttypts-linux",
        "Linux TTY/PTS概述 - Linux程序员 - SegmentFault 思否",
        "2024-08-10",
        "原文待补充：Linux TTY/PTS概述 - Linux程序员 - SegmentFaul",
        { b =>
            h2(b, "Linux TTY/PTS概述 - Linux程序员 - SegmentFault 思否")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://segmentfault.com/a/1190000009082089"), "阅读原文")
        }
    )
}
