package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZhuoweiboardwalkSourceCodeForBoardwalkAPost(): Post {
    return Post(
        "zhuoweiboardwalk-source-code-for-boardwalk-a",
        "zhuowei/Boardwalk: Source code for Boardwalk, a...",
        "2022-08-06",
        "GitHub 仓库：zhuowei/Boardwalk: Source code for Board",
        { b =>
            h2(b, "zhuowei/Boardwalk: Source code for Boardwalk, a...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/zhuowei/Boardwalk"), "访问原始链接")
        }
    )
}
