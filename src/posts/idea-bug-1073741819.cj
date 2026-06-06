package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIdeaBug1073741819Post(): Post {
    return Post(
        "idea-bug-1073741819",
        "IDEA 惊天 bug：进程已结束，退出代码 1073741819 - 腾讯云开发者社区-腾讯云",
        "2023-05-01",
        "原文待补充：IDEA 惊天 bug：进程已结束，退出代码 1073741819 - 腾讯云开",
        { b =>
            h2(b, "IDEA 惊天 bug：进程已结束，退出代码 1073741819 - 腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/1620688"), "阅读原文")
        }
    )
}
