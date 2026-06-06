package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getStackOverflowPost(): Post {
    return Post(
        "stack-overflow",
        "Stack Overflow 明文密码？ - V2EX",
        "2025-02-01",
        "论坛/讨论：Stack Overflow 明文密码？ - V2EX",
        { b =>
            h2(b, "Stack Overflow 明文密码？ - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.v2ex.com/t/466847"), "访问原始链接")
        }
    )
}
