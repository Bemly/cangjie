package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleasesTryashtarimageMap3Post(): Post {
    return Post(
        "releases-tryashtarimage-map-3",
        "Releases · tryashtar/image-map",
        "2020-03-15",
        "GitHub Releases：Releases · tryashtar/image-map",
        { b =>
            h2(b, "Releases · tryashtar/image-map")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/tryashtar/image-map/releases"), "访问原始链接")
        }
    )
}
