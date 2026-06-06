package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWin10UefiasenaPost(): Post {
    return Post(
        "win10-uefiasena",
        "win10 UEFI引导恢复_A_Sen_A的博客-CSDN博客_uefi引导修复",
        "2021-10-02",
        "原文待补充：win10 UEFI引导恢复_A_Sen_A的博客-CSDN博客_uefi引导修",
        { b =>
            h2(b, "win10 UEFI引导恢复_A_Sen_A的博客-CSDN博客_uefi引导修复")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/A_Sen_A/article/details/89545311"), "阅读原文")
        }
    )
}
