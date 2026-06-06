package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHawtimbadgeCollectionPost(): Post {
    return Post(
        "hawtimbadge-collection",
        "hawtim/badge-collection: 收集各种有意思的徽章",
        "2024-09-10",
        "GitHub 仓库：hawtim/badge-collection: 收集各种有意思的徽章",
        { b =>
            h2(b, "hawtim/badge-collection: 收集各种有意思的徽章")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/hawtim/badge-collection?tab=readme-ov-file"), "访问原始链接")
        }
    )
}
