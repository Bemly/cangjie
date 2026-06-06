package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleasesTdesktopX64tdesktopPost(): Post {
    return Post(
        "releases-tdesktop-x64tdesktop",
        "Releases · TDesktop-x64/tdesktop",
        "2023-05-14",
        "GitHub Releases：Releases · TDesktop-x64/tdesktop",
        { b =>
            h2(b, "Releases · TDesktop-x64/tdesktop")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/TDesktop-x64/tdesktop/releases"), "访问原始链接")
        }
    )
}
