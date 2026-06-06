package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUbuntuTtyPost(): Post {
    return Post(
        "ubuntu-tty",
        "ubuntu tty 上如何显示中文字符？ - V2EX",
        "2024-08-10",
        "论坛/讨论：ubuntu tty 上如何显示中文字符？ - V2EX",
        { b =>
            h2(b, "ubuntu tty 上如何显示中文字符？ - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://s.v2ex.com/t/1056186"), "访问原始链接")
        }
    )
}
