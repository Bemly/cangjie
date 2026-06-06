package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApplealcreadmecnmdAtMasterAcidantheraaPost(): Post {
    return Post(
        "applealcreadmecnmd-at-master-acidantheraa",
        "AppleALC/README_CN.md at master · acidanthera/A...",
        "2023-08-03",
        "GitHub 文件：AppleALC/README_CN.md at master · acidan",
        { b =>
            h2(b, "AppleALC/README_CN.md at master · acidanthera/A...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/acidanthera/AppleALC/blob/master/README_CN.md"), "访问原始链接")
        }
    )
}
