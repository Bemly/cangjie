package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxEchoprintfPost(): Post {
    return Post(
        "linux-echoprintf",
        "Linux常用命令--echo与printf",
        "[https://blog.hanqunfeng.com/2024/02/28/linux-command13-ec...](https://blog.hanqunfeng.com/2024/02/28/linux-command13-echo-printf/)",
        "原文待补充：Linux常用命令--echo与printf",
        { b =>
            h2(b, "Linux常用命令--echo与printf")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "飘逸峰的博客"), "阅读原文")
        }
    )
}
