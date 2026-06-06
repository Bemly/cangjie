package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMirrorsLiriliriErudaGitcodePost(): Post {
    return Post(
        "mirrors-liriliri-eruda-gitcode",
        "mirrors / liriliri / eruda · GitCode",
        "2023-01-19",
        "原文待补充：mirrors / liriliri / eruda · GitCode",
        { b =>
            h2(b, "mirrors / liriliri / eruda · GitCode")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://gitcode.net/mirrors/liriliri/eruda?utm_source=csdn_github_accelerator"), "阅读原文")
        }
    )
}
