package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMultipassSatirePost(): Post {
    return Post(
        "multipass-satire",
        "Multipass，一款更轻量级的虚拟机！ - satire - 博客园",
        "2024-01-16",
        "原文待补充：Multipass，一款更轻量级的虚拟机！ - satire - 博客园",
        { b =>
            h2(b, "Multipass，一款更轻量级的虚拟机！ - satire - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/satire/p/15681820.html"), "阅读原文")
        }
    )
}
