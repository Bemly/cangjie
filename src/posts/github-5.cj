package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub5Post(): Post {
    return Post(
        "github-5",
        "触发工作流的事件 - GitHub 文档",
        "2024-08-15",
        "GitHub 文件：触发工作流的事件 - GitHub 文档",
        { b =>
            h2(b, "触发工作流的事件 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows"), "访问原始链接")
        }
    )
}
