package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMacLinuxDoPost(): Post {
    return Post(
        "mac-linux-do",
        "分享一些不错的Mac破解软件网站 - 资源荟萃 - LINUX DO",
        "2024-11-19",
        "论坛/讨论：分享一些不错的Mac破解软件网站 - 资源荟萃 - LINUX DO",
        { b =>
            h2(b, "分享一些不错的Mac破解软件网站 - 资源荟萃 - LINUX DO")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://linux.do/t/topic/29102"), "访问原始链接")
        }
    )
}
