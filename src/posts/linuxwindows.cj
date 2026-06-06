package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxwindowsPost(): Post {
    return Post(
        "linuxwindows",
        "Linux和Windows间的远程桌面访问_过了即是客-CSDN博客",
        "2021-09-12",
        "原文待补充：Linux和Windows间的远程桌面访问_过了即是客-CSDN博客",
        { b =>
            h2(b, "Linux和Windows间的远程桌面访问_过了即是客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/u011054333/article/details/79905102"), "阅读原文")
        }
    )
}
