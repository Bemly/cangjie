package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenSourceFontsCollectionForChinesPost(): Post {
    return Post(
        "open-source-fonts-collection-for-chines",
        "中文开源字体集 Open Source Fonts Collection for Chines...",
        "2024-10-24",
        "原文待补充：中文开源字体集 Open Source Fonts Collection for",
        { b =>
            h2(b, "中文开源字体集 Open Source Fonts Collection for Chines...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://drxie.github.io/OSFCC/"), "阅读原文")
        }
    )
}
