package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAcmXennyPost(): Post {
    return Post(
        "acm-xenny",
        "ACM卡常数（各种玄学优化） - Xenny - 博客园",
        "2025-04-04",
        "原文待补充：ACM卡常数（各种玄学优化） - Xenny - 博客园",
        { b =>
            h2(b, "ACM卡常数（各种玄学优化） - Xenny - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/xenny/p/9410888.html"), "阅读原文")
        }
    )
}
