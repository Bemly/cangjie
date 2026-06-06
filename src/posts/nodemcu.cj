package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNodemcuPost(): Post {
    return Post(
        "nodemcu",
        "NodeMCU",
        "2024-10-18",
        "GitHub 仓库：NodeMCU",
        { b =>
            h2(b, "NodeMCU")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/nodemcu"), "访问原始链接")
        }
    )
}
