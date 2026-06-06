package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog993Post(): Post {
    return Post(
        "blog-993",
        "配置文件格式对比表 - 灵火 - 博客园",
        "2026-04-22",
        "原文待补充：配置文件格式对比表 - 灵火 - 博客园",
        { b =>
            h2(b, "配置文件格式对比表 - 灵火 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/fires/p/18785125"), "阅读原文")
        }
    )
}
