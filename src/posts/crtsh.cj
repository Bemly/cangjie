package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCrtshPost(): Post {
    return Post(
        "crtsh",
        "crt.sh",
        "[https://crt.sh/](https://crt.sh/)",
        "原文待补充：crt.sh",
        { b =>
            h2(b, "crt.sh")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Certificate Search"), "阅读原文")
        }
    )
}
