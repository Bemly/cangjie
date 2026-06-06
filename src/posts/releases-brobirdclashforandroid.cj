package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleasesBrobirdclashforandroidPost(): Post {
    return Post(
        "releases-brobirdclashforandroid",
        "Releases · BROBIRD/ClashForAndroid",
        "2022-06-03",
        "GitHub Releases：Releases · BROBIRD/ClashForAndroid",
        { b =>
            h2(b, "Releases · BROBIRD/ClashForAndroid")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/BROBIRD/ClashForAndroid/releases"), "访问原始链接")
        }
    )
}
