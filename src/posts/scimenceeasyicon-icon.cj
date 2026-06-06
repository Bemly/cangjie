package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getScimenceeasyiconIconPost(): Post {
    return Post(
        "scimenceeasyicon-icon",
        "scimence/easyIcon: 为了方便制作Icon，而专门开发的一款软件",
        "2021-11-06",
        "Gitee 页面：scimence/easyIcon: 为了方便制作Icon，而专门开发的一款软件",
        { b =>
            h2(b, "scimence/easyIcon: 为了方便制作Icon，而专门开发的一款软件")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/scimence/easyIcon"), "访问原始链接")
        }
    )
}
