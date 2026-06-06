package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog10Post(): Post {
    return Post(
        "blog-10",
        "❤️站❤️长❤️推❤️荐❤️",
        "2022-03-13",
        "原文待补充：❤️站❤️长❤️推❤️荐❤️",
        { b =>
            h2(b, "❤️站❤️长❤️推❤️荐❤️")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://arcxingye.github.io/r18/index.html"), "阅读原文")
        }
    )
}
