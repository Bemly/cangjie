package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog453Post(): Post {
    return Post(
        "blog-453",
        "OK解析",
        "2022-04-30",
        "原文待补充：OK解析",
        { b =>
            h2(b, "OK解析")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://api.okjx.cc:3389/jx.php?url=https://v1.szjal.cn/20190816/cMBEFVYO/index.m3u8"), "阅读原文")
        }
    )
}
