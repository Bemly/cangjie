package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getManualPost(): Post {
    return Post(
        "manual",
        "Manual",
        "[https://cli.github.com/manual/](https://cli.github.com/manual/)",
        "原文待补充：Manual",
        { b =>
            h2(b, "Manual")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "GitHub CLI"), "阅读原文")
        }
    )
}
