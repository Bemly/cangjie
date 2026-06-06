package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMoonbitMoonbitPost(): Post {
    return Post(
        "moonbit-moonbit",
        "MoonBit现代编程思想进阶-程序语言理论设计与实现 - 【进阶】MoonBit现代编程思想...",
        "2025-04-25",
        "原文待补充：MoonBit现代编程思想进阶-程序语言理论设计与实现 - 【进阶】MoonBi",
        { b =>
            h2(b, "MoonBit现代编程思想进阶-程序语言理论设计与实现 - 【进阶】MoonBit现代编程思想...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://taolun.moonbitlang.com/t/topic/890"), "阅读原文")
        }
    )
}
