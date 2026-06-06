package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodejsTypescriptNodejsPost(): Post {
    return Post(
        "nodejs-typescript-nodejs",
        "Node.js 中文网 — 使用 TypeScript 的 Node.js",
        "2024-08-15",
        "原文待补充：Node.js 中文网 — 使用 TypeScript 的 Node.js",
        { b =>
            h2(b, "Node.js 中文网 — 使用 TypeScript 的 Node.js")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://nodejs.cn/en/learn/getting-started/nodejs-with-typescript"), "阅读原文")
        }
    )
}
