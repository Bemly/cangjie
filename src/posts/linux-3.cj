package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux3Post(): Post {
    return Post(
        "linux-3",
        "Linux截图",
        "[https://linux265.com/screenshot/](https://linux265.com/screenshot/)",
        "原文待补充：Linux截图",
        { b =>
            h2(b, "Linux截图")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Linux265"), "阅读原文")
        }
    )
}
