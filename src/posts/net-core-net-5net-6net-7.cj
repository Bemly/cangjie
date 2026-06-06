package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNetCoreNet5net6net7Post(): Post {
    return Post(
        "net-core-net-5net-6net-7",
        "最全.NET Core 、.NET 5、.NET 6和.NET 7简介和区别 - 翔星 - 博客园",
        "2024-12-25",
        "原文待补充：最全.NET Core 、.NET 5、.NET 6和.NET 7简介和区别 -",
        { b =>
            h2(b, "最全.NET Core 、.NET 5、.NET 6和.NET 7简介和区别 - 翔星 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/xbhp/p/17286028.html"), "阅读原文")
        }
    )
}
