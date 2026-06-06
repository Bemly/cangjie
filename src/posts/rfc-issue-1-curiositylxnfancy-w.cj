package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRfcIssue1CuriositylxnfancyWPost(): Post {
    return Post(
        "rfc-issue-1-curiositylxnfancy-w",
        "那些年，一起不正经的RFC · Issue #1 · CuriosityLxn/Fancy-W...",
        "2025-05-03",
        "GitHub Issue：那些年，一起不正经的RFC · Issue #1 · CuriosityLxn/",
        { b =>
            h2(b, "那些年，一起不正经的RFC · Issue #1 · CuriosityLxn/Fancy-W...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/CuriosityLxn/Fancy-Web-Themes/issues/1"), "访问原始链接")
        }
    )
}
