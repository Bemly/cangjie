package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getContaboPost(): Post {
    return Post(
        "contabo",
        "Contabo 家的 机器是不是巨难用 - V2EX",
        "2025-01-02",
        "论坛/讨论：Contabo 家的 机器是不是巨难用 - V2EX",
        { b =>
            h2(b, "Contabo 家的 机器是不是巨难用 - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://v2ex.com/t/1079246"), "访问原始链接")
        }
    )
}
