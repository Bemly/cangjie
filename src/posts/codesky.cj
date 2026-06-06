package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCodeskyPost(): Post {
    return Post(
        "codesky",
        "CodeSky 代码之空",
        "2024-02-01",
        "网站主页：CodeSky 代码之空",
        { b =>
            h2(b, "CodeSky 代码之空")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.codesky.me/"), "访问原始链接")
        }
    )
}
