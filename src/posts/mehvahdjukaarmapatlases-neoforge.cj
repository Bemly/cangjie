package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMehvahdjukaarmapatlasesNeoforgePost(): Post {
    return Post(
        "mehvahdjukaarmapatlases-neoforge",
        "MehVahdJukaar/mapatlases-neoforge",
        "2025-02-13",
        "GitHub 仓库：MehVahdJukaar/mapatlases-neoforge",
        { b =>
            h2(b, "MehVahdJukaar/mapatlases-neoforge")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/MehVahdJukaar/mapatlases-neoforge"), "访问原始链接")
        }
    )
}
