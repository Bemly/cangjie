package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlogThemeDetailsPost(): Post {
    return Post(
        "blog-theme-details",
        "Blog Theme - Details",
        "2024-02-29",
        "原文待补充：Blog Theme - Details",
        { b =>
            h2(b, "Blog Theme - Details")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blogs.oracle.com/linux/post/introduction-to-virtio"), "阅读原文")
        }
    )
}
