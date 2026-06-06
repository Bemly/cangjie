package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPnpmmonorepoMoPost(): Post {
    return Post(
        "pnpmmonorepo-mo",
        "怎么基于pnpm搭建你自己的monorepo工具库并发包这篇文章我们来讲一下怎么 发布一个mo...",
        "2024-08-21",
        "原文待补充：怎么基于pnpm搭建你自己的monorepo工具库并发包这篇文章我们来讲一下怎么",
        { b =>
            h2(b, "怎么基于pnpm搭建你自己的monorepo工具库并发包这篇文章我们来讲一下怎么 发布一个mo...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://juejin.cn/post/7296703930313375783"), "阅读原文")
        }
    )
}
