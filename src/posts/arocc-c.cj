package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAroccCPost(): Post {
    return Post(
        "arocc-c",
        "探索高效编程新境界：Arocc - 一个轻量级C++编译器-CSDN博客",
        "2025-04-27",
        "原文待补充：探索高效编程新境界：Arocc - 一个轻量级C++编译器-CSDN博客",
        { b =>
            h2(b, "探索高效编程新境界：Arocc - 一个轻量级C++编译器-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/gitblog_00040/article/details/137708225"), "阅读原文")
        }
    )
}
