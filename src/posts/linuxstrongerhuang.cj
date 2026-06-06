package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxstrongerhuangPost(): Post {
    return Post(
        "linuxstrongerhuang",
        "盘点多款国产Linux桌面操作系统_strongerHuang-CSDN博客_国产linux",
        "2021-01-18",
        "原文待补充：盘点多款国产Linux桌面操作系统_strongerHuang-CSDN博客_国",
        { b =>
            h2(b, "盘点多款国产Linux桌面操作系统_strongerHuang-CSDN博客_国产linux")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/ybhuangfugui/article/details/103077742"), "阅读原文")
        }
    )
}
