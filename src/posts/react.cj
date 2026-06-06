package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getReactPost(): Post {
    return Post(
        "react",
        "“使用服务器”指令 – React",
        "2023-11-03",
        "原文待补充：“使用服务器”指令 – React",
        { b =>
            h2(b, "“使用服务器”指令 – React")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://react.dev/reference/react/use-server"), "阅读原文")
        }
    )
}
