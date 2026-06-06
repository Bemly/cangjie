package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUosSamcaoPost(): Post {
    return Post(
        "uos-samcao",
        "UOS命令行服务器离线授权码激活步骤 - samcao - 博客园",
        "2021-08-22",
        "原文待补充：UOS命令行服务器离线授权码激活步骤 - samcao - 博客园",
        { b =>
            h2(b, "UOS命令行服务器离线授权码激活步骤 - samcao - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/drgcaosheng/p/12808987.html"), "阅读原文")
        }
    )
}
