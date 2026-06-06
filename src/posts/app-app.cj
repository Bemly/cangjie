package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAppAppPost(): Post {
    return Post(
        "app-app",
        "我是不是很闲的蛋疼😅，把所有在用 app，买过的 app，订阅服务什么都整理了一个表。 - V2EX",
        "2024-09-23",
        "论坛/讨论：我是不是很闲的蛋疼😅，把所有在用 app，买过的 app，订阅服务什么都整理了一",
        { b =>
            h2(b, "我是不是很闲的蛋疼😅，把所有在用 app，买过的 app，订阅服务什么都整理了一个表。 - V2EX")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://v2ex.com/t/1074141"), "访问原始链接")
        }
    )
}
