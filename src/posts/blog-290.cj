package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog290Post(): Post {
    return Post(
        "blog-290",
        "[旋转矩阵]及左右乘的意义，别浪费时间了，看这一篇就够了-CSDN博客",
        "2024-04-03",
        "原文待补充：[旋转矩阵]及左右乘的意义，别浪费时间了，看这一篇就够了-CSDN博客",
        { b =>
            h2(b, "[旋转矩阵]及左右乘的意义，别浪费时间了，看这一篇就够了-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/jiesunliu3215/article/details/129730973"), "阅读原文")
        }
    )
}
