package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxExfatPost(): Post {
    return Post(
        "linux-exfat",
        "（实例）Linux 内核添加exfat驱动 - 黄树超 - 博客园",
        "2021-01-18",
        "原文待补充：（实例）Linux 内核添加exfat驱动 - 黄树超 - 博客园",
        { b =>
            h2(b, "（实例）Linux 内核添加exfat驱动 - 黄树超 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/schips/p/12305534.html"), "阅读原文")
        }
    )
}
