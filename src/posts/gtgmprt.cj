package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGtgmprtPost(): Post {
    return Post(
        "gtgmprt",
        "显示器响应时间GTG和MPRT有啥区别",
        "[https://woguide.com/11396.html](https://woguide.com/11396.html)",
        "原文待补充：显示器响应时间GTG和MPRT有啥区别",
        { b =>
            h2(b, "显示器响应时间GTG和MPRT有啥区别")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "九天博客"), "阅读原文")
        }
    )
}
