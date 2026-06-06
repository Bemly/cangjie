package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMozillarhinoRhinoIsAnOpenSourceImplemenPost(): Post {
    return Post(
        "mozillarhino-rhino-is-an-open-source-implemen",
        "mozilla/rhino: Rhino is an open-source implemen...",
        "2024-08-14",
        "GitHub 仓库：mozilla/rhino: Rhino is an open-source i",
        { b =>
            h2(b, "mozilla/rhino: Rhino is an open-source implemen...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/mozilla/rhino"), "访问原始链接")
        }
    )
}
