package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApi4Post(): Post {
    return Post(
        "api-4",
        "前端说你的API接口太慢了，怎么办？ - 二价亚铁 - 博客园",
        "2024-08-19",
        "原文待补充：前端说你的API接口太慢了，怎么办？ - 二价亚铁 - 博客园",
        { b =>
            h2(b, "前端说你的API接口太慢了，怎么办？ - 二价亚铁 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/xw-01/p/18313721"), "阅读原文")
        }
    )
}
