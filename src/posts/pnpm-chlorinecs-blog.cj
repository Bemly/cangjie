package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPnpmChlorinecsBlogPost(): Post {
    return Post(
        "pnpm-chlorinecs-blog",
        "前端工具链之包管理器 - pnpm - ChlorineC's Blog",
        "2024-08-21",
        "原文待补充：前端工具链之包管理器 - pnpm - ChlorineC's Blog",
        { b =>
            h2(b, "前端工具链之包管理器 - pnpm - ChlorineC's Blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://chlorinec.top/2023/06/09/Development/pnpm/"), "阅读原文")
        }
    )
}
