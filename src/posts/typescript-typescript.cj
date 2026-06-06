package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTypescriptTypescriptPost(): Post {
    return Post(
        "typescript-typescript",
        "为什么选择 TypeScript · 深入挖掘 TypeScript",
        "2024-08-23",
        "原文待补充：为什么选择 TypeScript · 深入挖掘 TypeScript",
        { b =>
            h2(b, "为什么选择 TypeScript · 深入挖掘 TypeScript")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://rexdainiel.gitbooks.io/typescript/content/docs/why-typescript.html"), "阅读原文")
        }
    )
}
