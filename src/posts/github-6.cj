package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub6Post(): Post {
    return Post(
        "github-6",
        "选择作业的运行器 - GitHub 文档",
        "2024-08-15",
        "GitHub 文件：选择作业的运行器 - GitHub 文档",
        { b =>
            h2(b, "选择作业的运行器 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/actions/writing-workflows/choosing-where-your-workflow-runs/choosing-the-runner-for-a-job"), "访问原始链接")
        }
    )
}
