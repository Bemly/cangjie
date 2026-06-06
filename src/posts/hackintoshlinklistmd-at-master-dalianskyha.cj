package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHackintoshlinklistmdAtMasterDalianskyhaPost(): Post {
    return Post(
        "hackintoshlinklistmd-at-master-dalianskyha",
        "Hackintosh/LinkList.md at master · daliansky/Ha...",
        "2023-08-03",
        "GitHub 文件：Hackintosh/LinkList.md at master · dalia",
        { b =>
            h2(b, "Hackintosh/LinkList.md at master · daliansky/Ha...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/daliansky/Hackintosh/blob/master/LinkList.md"), "访问原始链接")
        }
    )
}
