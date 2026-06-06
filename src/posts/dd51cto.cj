package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDd51ctoPost(): Post {
    return Post(
        "dd51cto",
        "居然以反战的名义，利用开源工具包“投毒”！_程序猿DD的技术博客_51CTO博客",
        "2023-03-04",
        "原文待补充：居然以反战的名义，利用开源工具包“投毒”！_程序猿DD的技术博客_51CTO博客",
        { b =>
            h2(b, "居然以反战的名义，利用开源工具包“投毒”！_程序猿DD的技术博客_51CTO博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.51cto.com/u_14299052/5139422"), "阅读原文")
        }
    )
}
