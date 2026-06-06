package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSdlPost(): Post {
    return Post(
        "sdl",
        "SDL中文教程",
        "2024-12-29",
        "原文待补充：SDL中文教程",
        { b =>
            h2(b, "SDL中文教程")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://tjumyk.github.io/sdl-tutorial-cn/"), "阅读原文")
        }
    )
}
