package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNetApiBrowserPost(): Post {
    return Post(
        "net-api-browser",
        ".NET API browser",
        "[https://learn.microsoft.com/zh-cn/dotnet/api/?view=net-9.0](https://learn.microsoft.com/zh-cn/dotnet/api/?view=net-9.0)",
        "原文待补充：.NET API browser",
        { b =>
            h2(b, ".NET API browser")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Microsoft Learn"), "阅读原文")
        }
    )
}
