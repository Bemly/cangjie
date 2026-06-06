package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIpcjsbilibiliHelperPost(): Post {
    return Post(
        "ipcjsbilibili-helper",
        "ipcjs/bilibili-helper: 各种油猴脚本",
        "2022-05-11",
        "GitHub 仓库：ipcjs/bilibili-helper: 各种油猴脚本",
        { b =>
            h2(b, "ipcjs/bilibili-helper: 各种油猴脚本")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/ipcjs/bilibili-helper"), "访问原始链接")
        }
    )
}
