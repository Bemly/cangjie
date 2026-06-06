package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAsahiLinuxPost(): Post {
    return Post(
        "asahi-linux",
        "Asahi Linux",
        "2024-11-14",
        "网站主页：Asahi Linux",
        { b =>
            h2(b, "Asahi Linux")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://asahilinux.org/"), "访问原始链接")
        }
    )
}
