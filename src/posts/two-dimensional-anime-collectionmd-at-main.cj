package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTwoDimensionalAnimeCollectionmdAtMainPost(): Post {
    return Post(
        "two-dimensional-anime-collectionmd-at-main",
        "Two-dimensional-anime-collection/漫页.md at main ...",
        "2022-08-27",
        "GitHub 文件：Two-dimensional-anime-collection/漫页.md a",
        { b =>
            h2(b, "Two-dimensional-anime-collection/漫页.md at main ...")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/chengbingyi/Two-dimensional-anime-collection/blob/main/%E6%BC%AB%E9%A1%B5.md"), "访问原始链接")
        }
    )
}
