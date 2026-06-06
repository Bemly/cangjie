package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAnsiEscapeCodesPost(): Post {
    return Post(
        "ansi-escape-codes",
        "ANSI Escape Codes",
        "2024-08-12",
        "GitHub 文件：ANSI Escape Codes",
        { b =>
            h2(b, "ANSI Escape Codes")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797?permalink_comment_id=3857871"), "访问原始链接")
        }
    )
}
