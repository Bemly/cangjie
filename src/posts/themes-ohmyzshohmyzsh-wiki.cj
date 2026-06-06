package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getThemesOhmyzshohmyzshWikiPost(): Post {
    return Post(
        "themes-ohmyzshohmyzsh-wiki",
        "Themes · ohmyzsh/ohmyzsh Wiki",
        "2024-09-09",
        "GitHub Wiki：Themes · ohmyzsh/ohmyzsh Wiki",
        { b =>
            h2(b, "Themes · ohmyzsh/ohmyzsh Wiki")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/ohmyzsh/ohmyzsh/wiki/Themes"), "访问原始链接")
        }
    )
}
