package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBuiltInFunctionsPython3120DocumentationPost(): Post {
    return Post(
        "built-in-functions-python-3120-documentation",
        "Built-in Functions — Python 3.12.0 documentation",
        "2023-10-07",
        "原文待补充：Built-in Functions — Python 3.12.0 docum",
        { b =>
            h2(b, "Built-in Functions — Python 3.12.0 documentation")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://docs.python.org/3/library/functions.html"), "阅读原文")
        }
    )
}
