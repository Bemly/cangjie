package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getThreejs3dlogoDragonirPost(): Post {
    return Post(
        "threejs3dlogo-dragonir",
        "Three.js实现脸书元宇宙3D动态Logo - Dragonir - 博客园",
        "2021-11-21",
        "原文待补充：Three.js实现脸书元宇宙3D动态Logo - Dragonir - 博客园",
        { b =>
            h2(b, "Three.js实现脸书元宇宙3D动态Logo - Dragonir - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/dragonir/p/15574412.html"), "阅读原文")
        }
    )
}
