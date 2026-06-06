package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRunSanduoBlogPost(): Post {
    return Post(
        "run-sanduo-blog",
        "run格式文件破解 - sanduo blog",
        "2024-08-11",
        "原文待补充：run格式文件破解 - sanduo blog",
        { b =>
            h2(b, "run格式文件破解 - sanduo blog")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://hksanduo.github.io/2020/05/28/2020-05-28-crack-run-program/"), "阅读原文")
        }
    )
}
