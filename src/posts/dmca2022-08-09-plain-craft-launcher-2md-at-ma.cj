package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDmca20220809PlainCraftLauncher2mdAtMaPost(): Post {
    return Post(
        "dmca2022-08-09-plain-craft-launcher-2md-at-ma",
        "dmca/2022-08-09-plain-craft-launcher-2.md at ma...",
        "2022-08-10",
        "GitHub 文件：dmca/2022-08-09-plain-craft-launcher-2.m",
        { b =>
            h2(b, "dmca/2022-08-09-plain-craft-launcher-2.md at ma...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/github/dmca/blob/master/2022/08/2022-08-09-plain-craft-launcher-2.md"), "访问原始链接")
        }
    )
}
