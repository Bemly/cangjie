package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpensilverdocumentationdocumentationgeneralPost(): Post {
    return Post(
        "opensilverdocumentationdocumentationgeneral",
        "OpenSilver.Documentation/documentation/general/...",
        "2024-08-20",
        "GitHub 文件：OpenSilver.Documentation/documentation/g",
        { b =>
            h2(b, "OpenSilver.Documentation/documentation/general/...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/OpenSilver/OpenSilver.Documentation/blob/master/documentation/general/internals-how-it-works.md/"), "访问原始链接")
        }
    )
}
