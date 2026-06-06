package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub2Post(): Post {
    return Post(
        "github-2",
        "Github 上有哪些知名的中国程序员？ - 知乎",
        "2022-05-28",
        "论坛/讨论：Github 上有哪些知名的中国程序员？ - 知乎",
        { b =>
            h2(b, "Github 上有哪些知名的中国程序员？ - 知乎")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.zhihu.com/question/23247776?sort=created"), "访问原始链接")
        }
    )
}
