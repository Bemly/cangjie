package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHougrsmartisanpullSmartPost(): Post {
    return Post(
        "hougrsmartisanpull-smart",
        "hougr/SmartisanPull: “锤子下拉”，东半球最优雅的下拉控件。也叫Smart...",
        "2022-06-21",
        "GitHub 仓库：hougr/SmartisanPull: “锤子下拉”，东半球最优雅的下拉控件。",
        { b =>
            h2(b, "hougr/SmartisanPull: “锤子下拉”，东半球最优雅的下拉控件。也叫Smart...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/hougr/SmartisanPull"), "访问原始链接")
        }
    )
}
