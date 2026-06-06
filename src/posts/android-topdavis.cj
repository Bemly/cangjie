package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAndroidTopdavisPost(): Post {
    return Post(
        "android-topdavis",
        "Android 进程监控（top命令）_Davis-CSDN博客_android top",
        "2021-12-24",
        "原文待补充：Android 进程监控（top命令）_Davis-CSDN博客_android",
        { b =>
            h2(b, "Android 进程监控（top命令）_Davis-CSDN博客_android top")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/wangzhongshun/article/details/102682139"), "阅读原文")
        }
    )
}
