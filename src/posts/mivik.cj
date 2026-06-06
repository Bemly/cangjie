package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMivikPost(): Post {
    return Post(
        "mivik",
        "水面之下：网络亚文化的“灰色地带” - Mivik的小窝",
        "2023-05-16",
        "原文待补充：水面之下：网络亚文化的“灰色地带” - Mivik的小窝",
        { b =>
            h2(b, "水面之下：网络亚文化的“灰色地带” - Mivik的小窝")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mivik.moe/2022/research/below-the-surface/"), "阅读原文")
        }
    )
}
