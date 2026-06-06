package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPnpmPost(): Post {
    return Post(
        "pnpm",
        "pnpm",
        "[https://tabxx.github.io/tab.github.io/2022/04/02/pnpm/](https://tabxx.github.io/tab.github.io/2022/04/02/pnpm/)",
        "原文待补充：pnpm",
        { b =>
            h2(b, "pnpm")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Tab"), "阅读原文")
        }
    )
}
