package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog874Post(): Post {
    return Post(
        "blog-874",
        "第六节 配置文件优化 · 我的世界服务器搭建指南",
        "2024-12-09",
        "原文待补充：第六节 配置文件优化 · 我的世界服务器搭建指南",
        { b =>
            h2(b, "第六节 配置文件优化 · 我的世界服务器搭建指南")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mhy278.github.io/MinecraftServerHostGuideHtml/Optimization.html"), "阅读原文")
        }
    )
}
