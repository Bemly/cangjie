package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIptables1iptablesPost(): Post {
    return Post(
        "iptables1iptables",
        "iptables详解（1）：iptables概念-朱双印博客",
        "2024-10-26",
        "原文待补充：iptables详解（1）：iptables概念-朱双印博客",
        { b =>
            h2(b, "iptables详解（1）：iptables概念-朱双印博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.zsythink.net/archives/1199"), "阅读原文")
        }
    )
}
