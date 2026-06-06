package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getExtramausIsAToolThatShowsAnAdditionalMoPost(): Post {
    return Post(
        "extramaus-is-a-tool-that-shows-an-additional-mo",
        "ExtraMaus is a tool that shows an additional mo...",
        "2024-08-10",
        "GitHub 文件：ExtraMaus is a tool that shows an additi",
        { b =>
            h2(b, "ExtraMaus is a tool that shows an additional mo...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://gist.github.com/dvdantunes/b86e9165f2a4d5bdae5e3e73363753b4"), "访问原始链接")
        }
    )
}
