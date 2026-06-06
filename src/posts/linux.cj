package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxPost(): Post {
    return Post(
        "linux",
        "中国Linux公社",
        "2022-01-01",
        "网站主页：中国Linux公社",
        { b =>
            h2(b, "中国Linux公社")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.linuxfans.org/"), "访问原始链接")
        }
    )
}
