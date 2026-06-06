package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog869Post(): Post {
    return Post(
        "blog-869",
        "游戏程序员的自我修养",
        "2024-11-28",
        "原文待补充：游戏程序员的自我修养",
        { b =>
            h2(b, "游戏程序员的自我修养")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://neil3d.github.io/3dengine/gl-brief-history.html"), "阅读原文")
        }
    )
}
