package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRustIsItPossibleToDownloadPreviousNighPost(): Post {
    return Post(
        "rust-is-it-possible-to-download-previous-nigh",
        "rust - Is it possible to download previous nigh...",
        "2024-08-08",
        "网站主页：rust - Is it possible to download previo",
        { b =>
            h2(b, "rust - Is it possible to download previous nigh...")
            p(b, "此链接为网站主页/门户页面，非博客文章。")
            a(b, attrs("href", "https://stackoverflow.com/questions/27758387/is-it-possible-to-download-previous-nightly-builds"), "访问原始链接")
        }
    )
}
