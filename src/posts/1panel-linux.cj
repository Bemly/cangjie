package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB1panellinuxPost(): Post {
    return Post(
        "1panel-linux",
        "1Panel - 现代化、开源的 Linux 服务器运维管理面板",
        "2023-05-01",
        "原文待补充：1Panel - 现代化、开源的 Linux 服务器运维管理面板",
        { b =>
            h2(b, "1Panel - 现代化、开源的 Linux 服务器运维管理面板")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://1panel.cn/"), "阅读原文")
        }
    )
}
