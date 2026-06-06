package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCjkttyPost(): Post {
    return Post(
        "cjktty",
        "记录一下树莓派打内核补丁cjktty的天坑-CSDN博客",
        "2024-08-10",
        "原文待补充：记录一下树莓派打内核补丁cjktty的天坑-CSDN博客",
        { b =>
            h2(b, "记录一下树莓派打内核补丁cjktty的天坑-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/jd3096/article/details/132470062"), "阅读原文")
        }
    )
}
