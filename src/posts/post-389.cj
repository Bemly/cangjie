package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPost389Post(): Post {
    return Post(
        "post-389",
        "优麒麟",
        "2021-12-31",
        "网站主页：优麒麟",
        { b =>
            h2(b, "优麒麟")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.ubuntukylin.com/downloads/osdownload-cn.html"), "访问原始链接")
        }
    )
}
