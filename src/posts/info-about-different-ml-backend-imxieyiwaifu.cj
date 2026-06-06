package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getInfoAboutDifferentMlBackendImxieyiwaifuPost(): Post {
    return Post(
        "info-about-different-ml-backend-imxieyiwaifu",
        "Info about different ML backend · imxieyi/waifu...",
        "2025-05-20",
        "GitHub Wiki：Info about different ML backend · imxiey",
        { b =>
            h2(b, "Info about different ML backend · imxieyi/waifu...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/imxieyi/waifu2x-ios/wiki/Info-about-different-ML-backend"), "访问原始链接")
        }
    )
}
