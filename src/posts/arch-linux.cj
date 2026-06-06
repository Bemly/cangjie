package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArchLinuxPost(): Post {
    return Post(
        "arch-linux",
        "Arch Linux 安装",
        "[https://www.xrgzs.top/posts/arch-linux-install](https://www.xrgzs.top/posts/arch-linux-install)",
        "原文待补充：Arch Linux 安装",
        { b =>
            h2(b, "Arch Linux 安装")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "潇然工作室"), "阅读原文")
        }
    )
}
