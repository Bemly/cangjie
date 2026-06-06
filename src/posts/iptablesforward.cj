package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIptablesforwardPost(): Post {
    return Post(
        "iptablesforward",
        "iptables之forward转发 - 技术颜良 - 博客园",
        "2024-09-23",
        "原文待补充：iptables之forward转发 - 技术颜良 - 博客园",
        { b =>
            h2(b, "iptables之forward转发 - 技术颜良 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/cheyunhua/p/17387018.html"), "阅读原文")
        }
    )
}
