package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodeEsModulePost(): Post {
    return Post(
        "node-es-module",
        "【架构师（第九篇）】如何让 Node 环境支持 ES Module-腾讯云开发者社区-腾讯云",
        "2024-08-21",
        "原文待补充：【架构师（第九篇）】如何让 Node 环境支持 ES Module-腾讯云开发者",
        { b =>
            h2(b, "【架构师（第九篇）】如何让 Node 环境支持 ES Module-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2190094"), "阅读原文")
        }
    )
}
