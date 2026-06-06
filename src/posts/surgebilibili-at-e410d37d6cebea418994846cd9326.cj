package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSurgebilibiliAtE410d37d6cebea418994846cd9326Post(): Post {
    return Post(
        "surgebilibili-at-e410d37d6cebea418994846cd9326",
        "Surge/Bilibili at e410d37d6cebea418994846cd9326...",
        "2022-05-01",
        "GitHub 文件：Surge/Bilibili at e410d37d6cebea41899484",
        { b =>
            h2(b, "Surge/Bilibili at e410d37d6cebea418994846cd9326...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/lcmigg/Surge/blob/e410d37d6cebea418994846cd932606680ee090d/File/Bilibili"), "访问原始链接")
        }
    )
}
