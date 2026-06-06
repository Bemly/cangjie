package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntuPost(): Post {
    return Post(
        "ubuntu",
        "Ubuntu",
        "2022-06-22",
        "网站主页：Ubuntu",
        { b =>
            h2(b, "Ubuntu")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.ubuntu.com/"), "访问原始链接")
        }
    )
}
