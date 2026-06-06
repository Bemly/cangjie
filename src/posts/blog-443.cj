package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog443Post(): Post {
    return Post(
        "blog-443",
        "华为手机进入工程模式_随笔随风-CSDN博客",
        "2021-01-23",
        "原文待补充：华为手机进入工程模式_随笔随风-CSDN博客",
        { b =>
            h2(b, "华为手机进入工程模式_随笔随风-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_37244202/article/details/72865073"), "阅读原文")
        }
    )
}
