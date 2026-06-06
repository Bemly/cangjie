package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB12101111sblogxboxonePost(): Post {
    return Post(
        "12101111s-blog-xbox-one",
        "12101111's blog - Xbox one 的安全措施",
        "2023-08-11",
        "原文待补充：12101111's blog - Xbox one 的安全措施",
        { b =>
            h2(b, "12101111's blog - Xbox one 的安全措施")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://12101111.github.io/xbox-security/"), "阅读原文")
        }
    )
}
