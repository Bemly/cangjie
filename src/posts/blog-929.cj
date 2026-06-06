package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog929Post(): Post {
    return Post(
        "blog-929",
        "多线程动态规划(过程详解)——蓝桥杯 方格取数_蓝桥杯使用多线程可以吗-CSDN博客",
        "2025-04-06",
        "原文待补充：多线程动态规划(过程详解)——蓝桥杯 方格取数_蓝桥杯使用多线程可以吗-CSDN",
        { b =>
            h2(b, "多线程动态规划(过程详解)——蓝桥杯 方格取数_蓝桥杯使用多线程可以吗-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_43715360/article/details/107495686"), "阅读原文")
        }
    )
}
