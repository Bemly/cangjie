package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog691Post(): Post {
    return Post(
        "blog-691",
        "美绩点阵体：(可能是)最完整的开源8×8点阵体 免费商用-猫啃网",
        "2024-08-13",
        "原文待补充：美绩点阵体：(可能是)最完整的开源8×8点阵体 免费商用-猫啃网",
        { b =>
            h2(b, "美绩点阵体：(可能是)最完整的开源8×8点阵体 免费商用-猫啃网")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.maoken.com/freefonts/19392.html"), "阅读原文")
        }
    )
}
