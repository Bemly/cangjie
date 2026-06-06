package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxDoPost(): Post {
    return Post(
        "linux-do",
        "常见问题解答 - LINUX DO",
        "2024-09-26",
        "原文待补充：常见问题解答 - LINUX DO",
        { b =>
            h2(b, "常见问题解答 - LINUX DO")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://linux.do/faq"), "阅读原文")
        }
    )
}
