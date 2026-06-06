package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getXun082createNeatDevelopedAFrontEndSPost(): Post {
    return Post(
        "xun082create-neat-developed-a-front-end-s",
        "xun082/create-neat: 🚀🚀🚀 Developed a front-end s...",
        "2024-08-21",
        "GitHub 仓库：xun082/create-neat: 🚀🚀🚀 Developed a fron",
        { b =>
            h2(b, "xun082/create-neat: 🚀🚀🚀 Developed a front-end s...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/xun082/create-neat"), "访问原始链接")
        }
    )
}
