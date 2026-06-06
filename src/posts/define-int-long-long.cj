package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDefineIntLongLongPost(): Post {
    return Post(
        "define-int-long-long",
        "向 #define int long long 说不 - 宝硕博客",
        "2025-04-06",
        "原文待补充：向 #define int long long 说不 - 宝硕博客",
        { b =>
            h2(b, "向 #define int long long 说不 - 宝硕博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.baoshuo.ren/post/say-no-to-define-int-long-long/"), "阅读原文")
        }
    )
}
