package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBookbookmdAtMainOicoolbookPost(): Post {
    return Post(
        "bookbookmd-at-main-oicoolbook",
        "book/book.md at main · oicool/book",
        "2025-04-12",
        "GitHub 文件：book/book.md at main · oicool/book",
        { b =>
            h2(b, "book/book.md at main · oicool/book")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/oicool/book/blob/main/book.md"), "访问原始链接")
        }
    )
}
