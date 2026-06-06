package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAbrowserHelpPost(): Post {
    return Post(
        "abrowser-help",
        "abrowser-help",
        "[https://trisquel.info/en/wiki/abrowser-help](https://trisquel.info/en/wiki/abrowser-help)",
        "原文待补充：abrowser-help",
        { b =>
            h2(b, "abrowser-help")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Trisquel GNU/Linux - Run free!"), "阅读原文")
        }
    )
}
