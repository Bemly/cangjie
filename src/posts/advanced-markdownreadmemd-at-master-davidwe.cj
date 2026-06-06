package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAdvancedMarkdownreadmemdAtMasterDavidwePost(): Post {
    return Post(
        "advanced-markdownreadmemd-at-master-davidwe",
        "advanced-markdown/README.md at master · DavidWe...",
        "2024-09-11",
        "GitHub 文件：advanced-markdown/README.md at master · ",
        { b =>
            h2(b, "advanced-markdown/README.md at master · DavidWe...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/DavidWells/advanced-markdown/blob/master/README.md"), "访问原始链接")
        }
    )
}
