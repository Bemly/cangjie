package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNaticmpPost(): Post {
    return Post(
        "naticmp",
        "如何实现支持NAT的ICMP隧道-腾讯云开发者社区-腾讯云",
        "2024-01-15",
        "原文待补充：如何实现支持NAT的ICMP隧道-腾讯云开发者社区-腾讯云",
        { b =>
            h2(b, "如何实现支持NAT的ICMP隧道-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2072473"), "阅读原文")
        }
    )
}
