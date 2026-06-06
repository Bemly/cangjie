package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascript2Post(): Post {
    return Post(
        "javascript-2",
        "javascript - 造轮子系列(二): 史上最简单的长连接通信协议及实现 - 一路行歌 ...",
        "2025-08-29",
        "原文待补充：javascript - 造轮子系列(二): 史上最简单的长连接通信协议及实现 ",
        { b =>
            h2(b, "javascript - 造轮子系列(二): 史上最简单的长连接通信协议及实现 - 一路行歌 ...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://segmentfault.com/a/1190000010402938"), "阅读原文")
        }
    )
}
