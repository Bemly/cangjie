package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog889Post(): Post {
    return Post(
        "blog-889",
        "我的世界启动器制作教程（第三版）",
        "2024-12-31",
        "原文待补充：我的世界启动器制作教程（第三版）",
        { b =>
            h2(b, "我的世界启动器制作教程（第三版）")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://vexlife.github.io/JuicyLauncher3/index.html#/"), "阅读原文")
        }
    )
}
