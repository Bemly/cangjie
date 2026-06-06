package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGuideOnHowToGetYourCookiesArvinzjcpaiPost(): Post {
    return Post(
        "guide-on-how-to-get-your-cookies-arvinzjcpai",
        "Guide on how to get your cookies · ArvinZJC/Pai...",
        "2023-04-24",
        "GitHub Wiki：Guide on how to get your cookies · Arvin",
        { b =>
            h2(b, "Guide on how to get your cookies · ArvinZJC/Pai...")
            p(b, "此链接为 GitHub Wiki，非博客文章。")
            a(b, attrs("href", "https://github.com/ArvinZJC/PaimonTray/wiki/Guide-on-how-to-get-your-cookies"), "访问原始链接")
        }
    )
}
