package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMarkedjsmarkedAMarkdownParserAndCompilerPost(): Post {
    return Post(
        "markedjsmarked-a-markdown-parser-and-compiler",
        "markedjs/marked: A markdown parser and compiler...",
        "2021-05-01",
        "GitHub 仓库：markedjs/marked: A markdown parser and c",
        { b =>
            h2(b, "markedjs/marked: A markdown parser and compiler...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/markedjs/marked"), "访问原始链接")
        }
    )
}
