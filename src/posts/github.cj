package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubPost(): Post {
    return Post(
        "github",
        "GitHub 被国人玩出新高度，这是耻辱啊！ - 知乎",
        "2022-05-28",
        "论坛/讨论：GitHub 被国人玩出新高度，这是耻辱啊！ - 知乎",
        { b =>
            h2(b, "GitHub 被国人玩出新高度，这是耻辱啊！ - 知乎")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://zhuanlan.zhihu.com/p/43102305"), "访问原始链接")
        }
    )
}
