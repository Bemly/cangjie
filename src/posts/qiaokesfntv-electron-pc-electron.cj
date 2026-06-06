package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getQiaokesfntvElectronPcElectronPost(): Post {
    return Post(
        "qiaokesfntv-electron-pc-electron",
        "QiaoKes/fntv-electron: 飞牛影视PC版 electron封装",
        "2026-02-27",
        "GitHub 仓库：QiaoKes/fntv-electron: 飞牛影视PC版 electron封",
        { b =>
            h2(b, "QiaoKes/fntv-electron: 飞牛影视PC版 electron封装")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/QiaoKes/fntv-electron"), "访问原始链接")
        }
    )
}
