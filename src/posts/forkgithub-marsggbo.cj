package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getForkgithubMarsggboPost(): Post {
    return Post(
        "forkgithub-marsggbo",
        "如何fork自己的github库？ - marsggbo - 博客园",
        "2024-10-03",
        "原文待补充：如何fork自己的github库？ - marsggbo - 博客园",
        { b =>
            h2(b, "如何fork自己的github库？ - marsggbo - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/marsggbo/p/12068295.html"), "阅读原文")
        }
    )
}
