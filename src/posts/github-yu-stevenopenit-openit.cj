package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubYuStevenopenitOpenitPost(): Post {
    return Post(
        "github-yu-stevenopenit-openit",
        "GitHub - yu-steven/openit: Openit订阅致力于打造免费无感的翻墙环境",
        "2022-04-25",
        "GitHub 仓库：GitHub - yu-steven/openit: Openit订阅致力于打造",
        { b =>
            h2(b, "GitHub - yu-steven/openit: Openit订阅致力于打造免费无感的翻墙环境")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/yu-steven/openit"), "访问原始链接")
        }
    )
}
