package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub8Post(): Post {
    return Post(
        "github-8",
        "GitHub的中国乱象：刷星、高仿、骂街和版聊_建站经验_新闻资讯 - 编程客栈",
        "2022-05-28",
        "原文待补充：GitHub的中国乱象：刷星、高仿、骂街和版聊_建站经验_新闻资讯 - 编程客栈",
        { b =>
            h2(b, "GitHub的中国乱象：刷星、高仿、骂街和版聊_建站经验_新闻资讯 - 编程客栈")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://www.cppcns.com/news/exp/147623.html"), "阅读原文")
        }
    )
}
