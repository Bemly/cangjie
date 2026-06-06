package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUupDumpGituupdumpnetPost(): Post {
    return Post(
        "uup-dump-gituupdumpnet",
        "UUP dump - git.uupdump.net",
        "2025-01-12",
        "原文待补充：UUP dump - git.uupdump.net",
        { b =>
            h2(b, "UUP dump - git.uupdump.net")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://git.uupdump.net/uup-dump"), "阅读原文")
        }
    )
}
