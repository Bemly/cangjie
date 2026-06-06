package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMoetmoePost(): Post {
    return Post(
        "moetmoe",
        "Moe/TMOE",
        "2022-07-20",
        "Gitee 页面：Moe/TMOE",
        { b =>
            h2(b, "Moe/TMOE")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/mo2/linux"), "访问原始链接")
        }
    )
}
