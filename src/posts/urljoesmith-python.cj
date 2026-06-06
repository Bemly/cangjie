package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUrljoesmithPythonPost(): Post {
    return Post(
        "urljoesmith-python",
        "百度url解析Joe.Smith整理大全 - 公众号python学习开发 - 博客园",
        "2022-02-17",
        "原文待补充：百度url解析Joe.Smith整理大全 - 公众号python学习开发 - 博",
        { b =>
            h2(b, "百度url解析Joe.Smith整理大全 - 公众号python学习开发 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/c-x-a/p/6897695.html"), "阅读原文")
        }
    )
}
