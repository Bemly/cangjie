package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog808Post(): Post {
    return Post(
        "blog-808",
        "常用端口及范围-腾讯云开发者社区-腾讯云",
        "2024-09-20",
        "原文待补充：常用端口及范围-腾讯云开发者社区-腾讯云",
        { b =>
            h2(b, "常用端口及范围-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/1925309"), "阅读原文")
        }
    )
}
