package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubActionsPost(): Post {
    return Post(
        "github-actions",
        "GitHub Actions 入门教程 - 阮一峰的网络日志",
        "2024-02-02",
        "原文待补充：GitHub Actions 入门教程 - 阮一峰的网络日志",
        { b =>
            h2(b, "GitHub Actions 入门教程 - 阮一峰的网络日志")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.ruanyifeng.com/blog/2019/09/getting-started-with-github-actions.html"), "阅读原文")
        }
    )
}
