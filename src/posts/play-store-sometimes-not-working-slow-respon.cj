package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPlayStoreSometimesNotWorkingSlowResponPost(): Post {
    return Post(
        "play-store-sometimes-not-working-slow-respon",
        "Play store sometimes not working / slow respon ...",
        "2023-08-08",
        "GitHub Issue：Play store sometimes not working / slow ",
        { b =>
            h2(b, "Play store sometimes not working / slow respon ...")
            p(b, "此链接为 GitHub Issue，非博客文章。")
            a(b, attrs("href", "https://github.com/sebanc/brunch/issues/1302"), "访问原始链接")
        }
    )
}
