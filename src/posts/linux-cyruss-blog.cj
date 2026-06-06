package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxCyrussBlogPost(): Post {
    return Post(
        "linux-cyruss-blog",
        "定制 Linux 终端登录消息 - Cyrus's Blog",
        "2024-09-26",
        "原文待补充：定制 Linux 终端登录消息 - Cyrus's Blog",
        { b =>
            h2(b, "定制 Linux 终端登录消息 - Cyrus's Blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.xm.mk/posts/7d7a/"), "阅读原文")
        }
    )
}
