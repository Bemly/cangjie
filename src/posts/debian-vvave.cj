package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDebianVvavePost(): Post {
    return Post(
        "debian-vvave",
        "Debian 系列系统修改登录提示语 - VVavE",
        "2024-09-26",
        "原文待补充：Debian 系列系统修改登录提示语 - VVavE",
        { b =>
            h2(b, "Debian 系列系统修改登录提示语 - VVavE")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.vvave.net/archives/change-system-login-banner-in-gnu-linux-debian-series-distro.html"), "阅读原文")
        }
    )
}
