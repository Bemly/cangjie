package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCpuintelArmPost(): Post {
    return Post(
        "cpuintel-arm",
        "苹果电脑为什么要换 CPU：Intel 与 ARM 的战争 - 阮一峰的网络日志",
        "2023-08-20",
        "原文待补充：苹果电脑为什么要换 CPU：Intel 与 ARM 的战争 - 阮一峰的网络日志",
        { b =>
            h2(b, "苹果电脑为什么要换 CPU：Intel 与 ARM 的战争 - 阮一峰的网络日志")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.ruanyifeng.com/blog/2020/06/cpu-architecture.html"), "阅读原文")
        }
    )
}
