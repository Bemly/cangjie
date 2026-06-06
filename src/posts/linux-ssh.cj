package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxSshPost(): Post {
    return Post(
        "linux-ssh",
        "Linux ssh配置详解 - 嗨，阿良 - 博客园",
        "2024-09-26",
        "原文待补充：Linux ssh配置详解 - 嗨，阿良 - 博客园",
        { b =>
            h2(b, "Linux ssh配置详解 - 嗨，阿良 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/fengting0913/p/15392525.html"), "阅读原文")
        }
    )
}
