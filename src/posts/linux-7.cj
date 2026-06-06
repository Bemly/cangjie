package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux7Post(): Post {
    return Post(
        "linux-7",
        "Linux驱动开发之输入子系统 - 大窟窿 - 博客园",
        "2024-08-10",
        "原文待补充：Linux驱动开发之输入子系统 - 大窟窿 - 博客园",
        { b =>
            h2(b, "Linux驱动开发之输入子系统 - 大窟窿 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/chorm590/p/12311107.html"), "阅读原文")
        }
    )
}
