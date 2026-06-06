package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSwsPost(): Post {
    return Post(
        "sws",
        "sws浏览器-主页",
        "2023-01-20",
        "原文待补充：sws浏览器-主页",
        { b =>
            h2(b, "sws浏览器-主页")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://swssoftwareshare.gitee.io/swswebbrowser/"), "阅读原文")
        }
    )
}
