package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWindowsiisPost(): Post {
    return Post(
        "windowsiis",
        "各版本Windows对应IIS版本 - 贺兰雪 - 博客园",
        "2024-03-21",
        "原文待补充：各版本Windows对应IIS版本 - 贺兰雪 - 博客园",
        { b =>
            h2(b, "各版本Windows对应IIS版本 - 贺兰雪 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/Zhao-Chen/articles/17386983.html"), "阅读原文")
        }
    )
}
