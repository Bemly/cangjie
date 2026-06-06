package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWin11InReactPost(): Post {
    return Post(
        "win-11-in-react",
        "Win 11 in React",
        "2021-08-16",
        "原文待补充：Win 11 in React",
        { b =>
            h2(b, "Win 11 in React")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://win11.blueedge.me/"), "阅读原文")
        }
    )
}
