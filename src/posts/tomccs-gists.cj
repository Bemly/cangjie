package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTomccsGistsPost(): Post {
    return Post(
        "tomccs-gists",
        "Tomcc’s gists",
        "2023-01-19",
        "GitHub 文件：Tomcc’s gists",
        { b =>
            h2(b, "Tomcc’s gists")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://gist.github.com/Tomcc"), "访问原始链接")
        }
    )
}
