package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMbrGrubPost(): Post {
    return Post(
        "mbr-grub",
        "MBR 嵌入微型 grub，有问题一起讨论(节选) - 陈晓猫 - 博客园",
        "2021-09-28",
        "原文待补充：MBR 嵌入微型 grub，有问题一起讨论(节选) - 陈晓猫 - 博客园",
        { b =>
            h2(b, "MBR 嵌入微型 grub，有问题一起讨论(节选) - 陈晓猫 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/liuzhaoyzz/archive/2012/06/11/2545411.html"), "阅读原文")
        }
    )
}
