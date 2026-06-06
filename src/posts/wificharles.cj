package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getWificharlesPost(): Post {
    return Post(
        "wificharles",
        "连接同一wifi配置Charles代理的问题_伊始的博客-CSDN博客",
        "2021-05-31",
        "原文待补充：连接同一wifi配置Charles代理的问题_伊始的博客-CSDN博客",
        { b =>
            h2(b, "连接同一wifi配置Charles代理的问题_伊始的博客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/njys1/article/details/74885644"), "阅读原文")
        }
    )
}
