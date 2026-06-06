package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub3Post(): Post {
    return Post(
        "github-3",
        "GitHub 长期被中国人“霸榜”？看完这些榜单，这又是什么新姿势？ - 知乎",
        "2022-05-28",
        "论坛/讨论：GitHub 长期被中国人“霸榜”？看完这些榜单，这又是什么新姿势？ - 知乎",
        { b =>
            h2(b, "GitHub 长期被中国人“霸榜”？看完这些榜单，这又是什么新姿势？ - 知乎")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://zhuanlan.zhihu.com/p/355456848"), "访问原始链接")
        }
    )
}
