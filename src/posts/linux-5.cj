package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux5Post(): Post {
    return Post(
        "linux-5",
        "千禧年的中文Linux",
        "2022-01-01",
        "原文待补充：千禧年的中文Linux",
        { b =>
            h2(b, "千禧年的中文Linux")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.compumuseum.com/linux.html"), "阅读原文")
        }
    )
}
