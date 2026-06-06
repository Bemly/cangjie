package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog797Post(): Post {
    return Post(
        "blog-797",
        "盒子萌 - 一个基于内容分享,创作与灵感结合折腾的笔记博客",
        "2024-09-14",
        "原文待补充：盒子萌 - 一个基于内容分享,创作与灵感结合折腾的笔记博客",
        { b =>
            h2(b, "盒子萌 - 一个基于内容分享,创作与灵感结合折腾的笔记博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.boxmoe.com/"), "阅读原文")
        }
    )
}
