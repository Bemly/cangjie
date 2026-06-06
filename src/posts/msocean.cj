package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMsoceanPost(): Post {
    return Post(
        "msocean",
        "那些年，我玩過的性愛玩具（上） - 女子的海Ms.Ocean",
        "2024-08-06",
        "原文待补充：那些年，我玩過的性愛玩具（上） - 女子的海Ms.Ocean",
        { b =>
            h2(b, "那些年，我玩過的性愛玩具（上） - 女子的海Ms.Ocean")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://msocean.com.tw/archives/4494"), "阅读原文")
        }
    )
}
