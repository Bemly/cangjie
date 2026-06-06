package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMarkdownPost(): Post {
    return Post(
        "markdown",
        "Markdown 解析器变更",
        "[https://help.gitee.com/enterprise/wiki/markdown-parser-ch...](https://help.gitee.com/enterprise/wiki/markdown-parser-changes)",
        "原文待补充：Markdown 解析器变更",
        { b =>
            h2(b, "Markdown 解析器变更")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Gitee 产品文档"), "阅读原文")
        }
    )
}
