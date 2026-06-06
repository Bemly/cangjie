package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubReadmeStatsthemesreadmemdAtMasterPost(): Post {
    return Post(
        "github-readme-statsthemesreadmemd-at-master",
        "github-readme-stats/themes/README.md at master ...",
        "2024-09-11",
        "GitHub 文件：github-readme-stats/themes/README.md at ",
        { b =>
            h2(b, "github-readme-stats/themes/README.md at master ...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/anuraghazra/github-readme-stats/blob/master/themes/README.md"), "访问原始链接")
        }
    )
}
