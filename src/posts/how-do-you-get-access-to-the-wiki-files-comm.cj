package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowDoYouGetAccessToTheWikiFilesCommPost(): Post {
    return Post(
        "how-do-you-get-access-to-the-wiki-files-comm",
        "How do you get access to the wiki files? · comm...",
        "2024-08-15",
        "GitHub 文件：How do you get access to the wiki files?",
        { b =>
            h2(b, "How do you get access to the wiki files? · comm...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/orgs/community/discussions/68564"), "访问原始链接")
        }
    )
}
