package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCfLinuxDoPost(): Post {
    return Post(
        "cf-linux-do",
        "基于CF大善人代理一个账号池 - 开发调优 - LINUX DO",
        "2024-09-26",
        "论坛/讨论：基于CF大善人代理一个账号池 - 开发调优 - LINUX DO",
        { b =>
            h2(b, "基于CF大善人代理一个账号池 - 开发调优 - LINUX DO")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://linux.do/t/topic/95057/17"), "访问原始链接")
        }
    )
}
