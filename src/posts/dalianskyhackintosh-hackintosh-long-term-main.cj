package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDalianskyhackintoshHackintoshLongTermMainPost(): Post {
    return Post(
        "dalianskyhackintosh-hackintosh-long-term-main",
        "daliansky/Hackintosh: Hackintosh long-term main...",
        "2023-08-03",
        "GitHub 仓库：daliansky/Hackintosh: Hackintosh long-te",
        { b =>
            h2(b, "daliansky/Hackintosh: Hackintosh long-term main...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/daliansky/Hackintosh"), "访问原始链接")
        }
    )
}
