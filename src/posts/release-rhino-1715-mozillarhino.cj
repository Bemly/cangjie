package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleaseRhino1715MozillarhinoPost(): Post {
    return Post(
        "release-rhino-1715-mozillarhino",
        "Release Rhino 1.7.15 · mozilla/rhino",
        "2024-08-15",
        "GitHub Releases：Release Rhino 1.7.15 · mozilla/rhino",
        { b =>
            h2(b, "Release Rhino 1.7.15 · mozilla/rhino")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/mozilla/rhino/releases/tag/Rhino1_7_15_Release"), "访问原始链接")
        }
    )
}
