package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWorkflowTemplatesBemlychinaSteamPricerPost(): Post {
    return Post(
        "workflow-templates-bemlychina-steam-pricer",
        "Workflow templates · Bemly/china-steam-pricer",
        "2024-08-14",
        "GitHub 文件：Workflow templates · Bemly/china-steam-p",
        { b =>
            h2(b, "Workflow templates · Bemly/china-steam-pricer")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/Bemly/china-steam-pricer/actions/new?category=automation"), "访问原始链接")
        }
    )
}
