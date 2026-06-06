package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDebianGnulinuxPost(): Post {
    return Post(
        "debian-gnulinux",
        "Debian GNU/Linux 安装手册",
        "2024-09-26",
        "网站主页：Debian GNU/Linux 安装手册",
        { b =>
            h2(b, "Debian GNU/Linux 安装手册")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://www.debian.org/releases/bookworm/amd64/index.zh-cn.html"), "访问原始链接")
        }
    )
}
