package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDohHttp3DohPost(): Post {
    return Post(
        "doh-http3-doh",
        "如果你正在使用阿里的 DoH，强烈推荐你试试强制 HTTP/3 的 DoH - V2EX",
        "2024-09-26",
        "论坛/讨论：如果你正在使用阿里的 DoH，强烈推荐你试试强制 HTTP/3 的 DoH - ",
        { b =>
            h2(b, "如果你正在使用阿里的 DoH，强烈推荐你试试强制 HTTP/3 的 DoH - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://v2ex.com/t/963547"), "访问原始链接")
        }
    )
}
