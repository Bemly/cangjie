package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGrubPost(): Post {
    return Post(
        "grub",
        "GRUB简单入门教程_星仔的“韵”-CSDN博客_grub教程",
        "2021-09-27",
        "原文待补充：GRUB简单入门教程_星仔的“韵”-CSDN博客_grub教程",
        { b =>
            h2(b, "GRUB简单入门教程_星仔的“韵”-CSDN博客_grub教程")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/liu5320102/article/details/54846432"), "阅读原文")
        }
    )
}
