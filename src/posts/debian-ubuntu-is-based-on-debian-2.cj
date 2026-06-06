package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDebianUbuntuIsBasedOnDebian2Post(): Post {
    return Post(
        "debian-ubuntu-is-based-on-debian-2",
        "Debian (Ubuntu is based on Debian)",
        "2021-01-25",
        "网站主页：Debian (Ubuntu is based on Debian)",
        { b =>
            h2(b, "Debian (Ubuntu is based on Debian)")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "http://www.debian.org/"), "访问原始链接")
        }
    )
}
