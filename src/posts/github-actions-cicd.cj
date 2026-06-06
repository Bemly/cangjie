package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubActionsCicdPost(): Post {
    return Post(
        "github-actions-cicd",
        "GitHub Actions CI/CD 工作流实战 - 护发师兄 - 博客园",
        "2024-08-14",
        "原文待补充：GitHub Actions CI/CD 工作流实战 - 护发师兄 - 博客园",
        { b =>
            h2(b, "GitHub Actions CI/CD 工作流实战 - 护发师兄 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/jonil/p/17666389.html"), "阅读原文")
        }
    )
}
