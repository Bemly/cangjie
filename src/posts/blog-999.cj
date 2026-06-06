package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog999Post(): Post {
    return Post(
        "blog-999",
        "「长期更新」一些有意思的开源项目收集",
        "2026-05-06",
        "原文待补充：「长期更新」一些有意思的开源项目收集",
        { b =>
            h2(b, "「长期更新」一些有意思的开源项目收集")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://with.fish/posts/collection-of-open-source-projects/"), "阅读原文")
        }
    )
}
