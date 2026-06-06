package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB45632Post(): Post {
    return Post(
        "4563-2",
        "迷雾通 – 一个研究生开发的代理，看起来不错。 – 4563博客@每日更新,本地保留",
        "2022-08-15",
        "原文待补充：迷雾通 – 一个研究生开发的代理，看起来不错。 – 4563博客@每日更新,本地",
        { b =>
            h2(b, "迷雾通 – 一个研究生开发的代理，看起来不错。 – 4563博客@每日更新,本地保留")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://4563.org/?p=11387#google_vignette"), "阅读原文")
        }
    )
}
