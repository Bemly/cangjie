package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFreebsd532101DancefirePost(): Post {
    return Post(
        "freebsd-5321-01-dancefire",
        "巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01 - Dancefire - 博客园",
        "2022-01-01",
        "原文待补充：巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01 - Dancef",
        { b =>
            h2(b, "巧用FreeBSD 5.3内核启动做了点手脚的麒麟2.1-01 - Dancefire - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/dancefire/archive/2006/05/21/1985892.html"), "阅读原文")
        }
    )
}
