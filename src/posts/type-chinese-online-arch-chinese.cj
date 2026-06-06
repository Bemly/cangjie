package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTypeChineseOnlineArchChinesePost(): Post {
    return Post(
        "type-chinese-online-arch-chinese",
        "Type Chinese Online - 在线中文输入 - Arch Chinese",
        "2025-01-08",
        "原文待补充：Type Chinese Online - 在线中文输入 - Arch Chin",
        { b =>
            h2(b, "Type Chinese Online - 在线中文输入 - Arch Chinese")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.archchinese.com/type_chinese.html"), "阅读原文")
        }
    )
}
