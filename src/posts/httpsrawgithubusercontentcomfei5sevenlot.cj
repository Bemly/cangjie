package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHttpsrawgithubusercontentcomfei5sevenlotPost(): Post {
    return Post(
        "httpsrawgithubusercontentcomfei5sevenlot",
        "https://raw.githubusercontent.com/fei5seven/lot...",
        "2024-09-07",
        "原文待补充：https://raw.githubusercontent.com/fei5se",
        { b =>
            h2(b, "https://raw.githubusercontent.com/fei5seven/lot...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://raw.githubusercontent.com/fei5seven/lotServer/master/lotServer.log"), "阅读原文")
        }
    )
}
