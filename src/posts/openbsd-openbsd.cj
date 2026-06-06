package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenbsdOpenbsdPost(): Post {
    return Post(
        "openbsd-openbsd",
        "OpenBSD 简介 - OpenBSD 中文结社",
        "2024-09-02",
        "原文待补充：OpenBSD 简介 - OpenBSD 中文结社",
        { b =>
            h2(b, "OpenBSD 简介 - OpenBSD 中文结社")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://openbsd-zh-association.github.io/docs-openbsd-zh/openbsd-faq/faq1/"), "阅读原文")
        }
    )
}
