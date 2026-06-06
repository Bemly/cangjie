package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxipPost(): Post {
    return Post(
        "linuxip",
        "如何在Linux云服务器上设置多个IP地址？-朝暮数据",
        "2024-09-20",
        "原文待补充：如何在Linux云服务器上设置多个IP地址？-朝暮数据",
        { b =>
            h2(b, "如何在Linux云服务器上设置多个IP地址？-朝暮数据")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://zhaomu.com/help/detail-750.html"), "阅读原文")
        }
    )
}
