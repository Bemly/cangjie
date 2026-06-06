package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getParseint000000055Post(): Post {
    return Post(
        "parseint00000005-5",
        "一个惊人的问题，parseInt(0.0000005) 返回结果是“5”？ - 掘金",
        "2023-04-03",
        "原文待补充：一个惊人的问题，parseInt(0.0000005) 返回结果是“5”？ - ",
        { b =>
            h2(b, "一个惊人的问题，parseInt(0.0000005) 返回结果是“5”？ - 掘金")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://juejin.cn/post/7153141685719465991"), "阅读原文")
        }
    )
}
