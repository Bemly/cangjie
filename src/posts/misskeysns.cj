package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMisskeysnsPost(): Post {
    return Post(
        "misskeysns",
        "Misskey：一个日产开源SNS系统-荒岛",
        "2024-09-27",
        "原文待补充：Misskey：一个日产开源SNS系统-荒岛",
        { b =>
            h2(b, "Misskey：一个日产开源SNS系统-荒岛")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://lala.im/4291.html"), "阅读原文")
        }
    )
}
