package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleasesTryashtarimageMap2Post(): Post {
    return Post(
        "releases-tryashtarimage-map-2",
        "Releases · tryashtar/image-map",
        "2021-01-22",
        "GitHub Releases：Releases · tryashtar/image-map",
        { b =>
            h2(b, "Releases · tryashtar/image-map")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/tryashtar/image-map/releases"), "访问原始链接")
        }
    )
}
