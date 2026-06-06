package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDabaiyunPost(): Post {
    return Post(
        "dabaiyun",
        "【指南】如何选购合适的服务器配置 - DaBaiYun - 支持中心",
        "2025-01-02",
        "原文待补充：【指南】如何选购合适的服务器配置 - DaBaiYun - 支持中心",
        { b =>
            h2(b, "【指南】如何选购合适的服务器配置 - DaBaiYun - 支持中心")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://help.dabaiyun.net/index.php/archives/258/"), "阅读原文")
        }
    )
}
