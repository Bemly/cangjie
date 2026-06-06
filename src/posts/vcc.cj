package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVccPost(): Post {
    return Post(
        "vcc",
        "VC++对C标准的支持 - 小比丘 - 博客园",
        "2025-04-04",
        "原文待补充：VC++对C标准的支持 - 小比丘 - 博客园",
        { b =>
            h2(b, "VC++对C标准的支持 - 小比丘 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/emituofo/archive/2012/07/20/2600741.html"), "阅读原文")
        }
    )
}
