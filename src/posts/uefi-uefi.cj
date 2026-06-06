package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUefiUefiPost(): Post {
    return Post(
        "uefi-uefi",
        "从零开始的UEFI裸机编程 - 从零开始的UEFI裸机编程",
        "2025-12-19",
        "原文待补充：从零开始的UEFI裸机编程 - 从零开始的UEFI裸机编程",
        { b =>
            h2(b, "从零开始的UEFI裸机编程 - 从零开始的UEFI裸机编程")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://kagurazakakotori.github.io/ubmp-cn/index.html"), "阅读原文")
        }
    )
}
