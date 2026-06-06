package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getP30303030Post(): Post {
    return Post(
        "30-30-30-30",
        "申请软著时要求提交源代码的前 30 页和后 30 页？ 这个“前 30 页和后 30 页”是个...",
        "2024-08-13",
        "论坛/讨论：申请软著时要求提交源代码的前 30 页和后 30 页？ 这个“前 30 页和后 ",
        { b =>
            h2(b, "申请软著时要求提交源代码的前 30 页和后 30 页？ 这个“前 30 页和后 30 页”是个...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://jp.v2ex.com/t/972302"), "访问原始链接")
        }
    )
}
