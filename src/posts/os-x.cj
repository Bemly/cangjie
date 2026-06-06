package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOsXPost(): Post {
    return Post(
        "os-x",
        "有没有 OS X 的云主机？ - V2EX",
        "2023-07-10",
        "论坛/讨论：有没有 OS X 的云主机？ - V2EX",
        { b =>
            h2(b, "有没有 OS X 的云主机？ - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://v2ex.com/t/252549"), "访问原始链接")
        }
    )
}
