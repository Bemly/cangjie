package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpenfydecookbookPost(): Post {
    return Post(
        "openfydecookbook",
        "openFyde/cookbook",
        "2023-08-09",
        "Gitee 页面：openFyde/cookbook",
        { b =>
            h2(b, "openFyde/cookbook")
            p(b, "此链接为 Gitee 仓库/页面，非博客文章。")
            a(b, attrs("href", "https://gitee.com/openFyde/cookbook"), "访问原始链接")
        }
    )
}
