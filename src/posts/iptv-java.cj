package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIptvJavaPost(): Post {
    return Post(
        "iptv-java",
        "破解中国电信的iptv机顶盒_电信电视机顶盒怎么破解教程通用-Java架构师必看",
        "2023-01-11",
        "原文待补充：破解中国电信的iptv机顶盒_电信电视机顶盒怎么破解教程通用-Java架构师必看",
        { b =>
            h2(b, "破解中国电信的iptv机顶盒_电信电视机顶盒怎么破解教程通用-Java架构师必看")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://javajgs.com/archives/88132"), "阅读原文")
        }
    )
}
