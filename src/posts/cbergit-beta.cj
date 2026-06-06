package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCbergitBetaPost(): Post {
    return Post(
        "cbergit-beta",
        "CBerGit Beta",
        "2021-08-10",
        "网站主页：CBerGit Beta",
        { b =>
            h2(b, "CBerGit Beta")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://cbergit.meteormc.xyz/"), "访问原始链接")
        }
    )
}
