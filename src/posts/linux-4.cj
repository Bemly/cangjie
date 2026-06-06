package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux4Post(): Post {
    return Post(
        "linux-4",
        "Linux 中国◆开源社区",
        "[https://linux.cn/tech/desktop/](https://linux.cn/tech/desktop/)",
        "原文待补充：Linux 中国◆开源社区",
        { b =>
            h2(b, "Linux 中国◆开源社区")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "桌面应用"), "阅读原文")
        }
    )
}
