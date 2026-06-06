package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getSdkNetPost(): Post {
    return Post(
        "sdk-net",
        "SDK 样式项目中的目标框架 - .NET",
        "[https://learn.microsoft.com/zh-cn/dotnet/standard/frameworks](https://learn.microsoft.com/zh-cn/dotnet/standard/frameworks)",
        "原文待补充：SDK 样式项目中的目标框架 - .NET",
        { b =>
            h2(b, "SDK 样式项目中的目标框架 - .NET")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Microsoft Learn"), "阅读原文")
        }
    )
}
