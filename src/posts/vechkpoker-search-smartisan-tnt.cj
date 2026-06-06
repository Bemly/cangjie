package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getVechkpokerSearchSmartisanTntPost(): Post {
    return Post(
        "vechkpoker-search-smartisan-tnt",
        "VecHK/poker-search: 一款灵感来源于 Smartisan TNT 发牌手的 ...",
        "2022-06-21",
        "GitHub 仓库：VecHK/poker-search: 一款灵感来源于 Smartisan TN",
        { b =>
            h2(b, "VecHK/poker-search: 一款灵感来源于 Smartisan TNT 发牌手的 ...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/VecHK/poker-search"), "访问原始链接")
        }
    )
}
