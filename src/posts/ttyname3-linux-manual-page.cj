package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTtyname3LinuxManualPagePost(): Post {
    return Post(
        "ttyname3-linux-manual-page",
        "ttyname(3) - Linux manual page",
        "2024-08-08",
        "官方文档/工具：ttyname(3) - Linux manual page",
        { b =>
            h2(b, "ttyname(3) - Linux manual page")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://man7.org/linux/man-pages/man3/ttyname.3.html"), "访问原始链接")
        }
    )
}
