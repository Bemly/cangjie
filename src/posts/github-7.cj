package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithub7Post(): Post {
    return Post(
        "github-7",
        "自定义组织的配置文件 - GitHub 文档",
        "2024-09-11",
        "GitHub 文件：自定义组织的配置文件 - GitHub 文档",
        { b =>
            h2(b, "自定义组织的配置文件 - GitHub 文档")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://docs.github.com/zh/organizations/collaborating-with-groups-in-organizations/customizing-your-organizations-profile#adding-a-member-only-organization-profile-readme"), "访问原始链接")
        }
    )
}
