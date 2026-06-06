package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMainEmscripten3165GitDevDocumentationPost(): Post {
    return Post(
        "main-emscripten-3165-git-dev-documentation",
        "Main — Emscripten 3.1.65-git (dev) documentation",
        "2024-08-13",
        "原文待补充：Main — Emscripten 3.1.65-git (dev) docum",
        { b =>
            h2(b, "Main — Emscripten 3.1.65-git (dev) documentation")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://emscripten.org/"), "阅读原文")
        }
    )
}
