package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlogPost(): Post {
    return Post(
        "blog",
        "Blog",
        "[https://lovelybemly.github.io/Blog/](https://lovelybemly.github.io/Blog/)",
        "原文待补充：Blog",
        { b =>
            h2(b, "Blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "蓝莓小果冻的个人博客"), "阅读原文")
        }
    )
}
