package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCIpandaPost(): Post {
    return Post(
        "c-ipanda",
        "C++奇淫巧计 · iPanda",
        "2023-05-02",
        "原文待补充：C++奇淫巧计 · iPanda",
        { b =>
            h2(b, "C++奇淫巧计 · iPanda")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mainvooid.github.io/posts/C++%E5%A5%87%E6%B7%AB%E5%B7%A7%E8%AE%A1.html"), "阅读原文")
        }
    )
}
