package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubFumiamacopymangaAppPost(): Post {
    return Post(
        "github-fumiamacopymanga-app",
        "GitHub - fumiama/copymanga: 拷贝漫画的第三方APP，优化阅读/下载体验",
        "2023-01-03",
        "GitHub 仓库：GitHub - fumiama/copymanga: 拷贝漫画的第三方APP，",
        { b =>
            h2(b, "GitHub - fumiama/copymanga: 拷贝漫画的第三方APP，优化阅读/下载体验")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/fumiama/copymanga"), "访问原始链接")
        }
    )
}
