package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIcmpcsPost(): Post {
    return Post(
        "icmpcs",
        "内网穿透之icmp隧道搭建+上线CS+环境场景搭建-腾讯云开发者社区-腾讯云",
        "2024-01-15",
        "原文待补充：内网穿透之icmp隧道搭建+上线CS+环境场景搭建-腾讯云开发者社区-腾讯云",
        { b =>
            h2(b, "内网穿透之icmp隧道搭建+上线CS+环境场景搭建-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2035886?areaSource=102001.20&traceId=G-fj0Y8qlsxXqj4dC8QGY"), "阅读原文")
        }
    )
}
