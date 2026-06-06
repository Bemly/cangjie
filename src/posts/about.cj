package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAboutPost(): Post {
    return Post(
        "about",
        "About - 捕蛇者说",
        "2024-08-24",
        "原文待补充：About - 捕蛇者说",
        { b =>
            h2(b, "About - 捕蛇者说")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://pythonhunter.org/about"), "阅读原文")
        }
    )
}
