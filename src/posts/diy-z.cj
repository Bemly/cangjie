package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDiyZPost(): Post {
    return Post(
        "diy-z",
        "蓝桥杯突击复习准备——部分算法汇总 - DIY-Z - 博客园",
        "2025-04-11",
        "原文待补充：蓝桥杯突击复习准备——部分算法汇总 - DIY-Z - 博客园",
        { b =>
            h2(b, "蓝桥杯突击复习准备——部分算法汇总 - DIY-Z - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/KeepZ/p/13829092.html"), "阅读原文")
        }
    )
}
