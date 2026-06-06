package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJsonmodelguide5BlockbenchmdAtMaiPost(): Post {
    return Post(
        "jsonmodelguide5-blockbenchmd-at-mai",
        "JsonModelGuide/5-Blockbench界面介绍以及常用设置.md at mai...",
        "2025-02-11",
        "GitHub 文件：JsonModelGuide/5-Blockbench界面介绍以及常用设置.md",
        { b =>
            h2(b, "JsonModelGuide/5-Blockbench界面介绍以及常用设置.md at mai...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/XiLaiTL/JsonModelGuide/blob/main/5-Blockbench%E7%95%8C%E9%9D%A2%E4%BB%8B%E7%BB%8D%E4%BB%A5%E5%8F%8A%E5%B8%B8%E7%94%A8%E8%AE%BE%E7%BD%AE.md"), "访问原始链接")
        }
    )
}
