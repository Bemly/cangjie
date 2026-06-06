package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLiveCd8Post(): Post {
    return Post(
        "live-cd-8",
        "亲手造成的运维事故：在 Live CD 环境下部署并运行了 8 个月 - V2EX",
        "2024-09-22",
        "论坛/讨论：亲手造成的运维事故：在 Live CD 环境下部署并运行了 8 个月 - V2E",
        { b =>
            h2(b, "亲手造成的运维事故：在 Live CD 环境下部署并运行了 8 个月 - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.v2ex.com/t/974678"), "访问原始链接")
        }
    )
}
