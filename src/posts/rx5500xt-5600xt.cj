package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRx5500xt5600xtPost(): Post {
    return Post(
        "rx5500xt-5600xt",
        "黑苹果显卡选择困难症： RX5500XT 还是 5600XT？ - V2EX",
        "2024-02-14",
        "论坛/讨论：黑苹果显卡选择困难症： RX5500XT 还是 5600XT？ - V2EX",
        { b =>
            h2(b, "黑苹果显卡选择困难症： RX5500XT 还是 5600XT？ - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.v2ex.com/t/855572"), "访问原始链接")
        }
    )
}
