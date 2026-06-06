package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPnpmturborepoPost(): Post {
    return Post(
        "pnpmturborepo",
        "如何基于 PNPM+Turborepo 为公司搭建一个通用型前端脚手架⾯对创建不同项⽬时遇到的...",
        "2024-08-21",
        "原文待补充：如何基于 PNPM+Turborepo 为公司搭建一个通用型前端脚手架⾯对创建不",
        { b =>
            h2(b, "如何基于 PNPM+Turborepo 为公司搭建一个通用型前端脚手架⾯对创建不同项⽬时遇到的...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://juejin.cn/post/7346865556328661007?share_token=9807b370-23f1-4464-a916-3376bb807742"), "阅读原文")
        }
    )
}
