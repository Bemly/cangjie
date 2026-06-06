package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReleasesBoyceligclashchinesepatchPost(): Post {
    return Post(
        "releases-boyceligclashchinesepatch",
        "Releases · BoyceLig/Clash_Chinese_Patch",
        "2021-06-10",
        "GitHub Releases：Releases · BoyceLig/Clash_Chinese_Patch",
        { b =>
            h2(b, "Releases · BoyceLig/Clash_Chinese_Patch")
            p(b, "此链接为 GitHub Releases 页面，非博客文章。")
            a(b, attrs("href", "https://github.com/BoyceLig/Clash_Chinese_Patch/releases"), "访问原始链接")
        }
    )
}
