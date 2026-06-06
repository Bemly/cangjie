package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIpipRanriqingPost(): Post {
    return Post(
        "ipip-ranriqing",
        "如何拒绝国外IP/屏蔽国外IP访问服务器？ - ranriqing - 博客园",
        "2024-09-23",
        "原文待补充：如何拒绝国外IP/屏蔽国外IP访问服务器？ - ranriqing - 博客园",
        { b =>
            h2(b, "如何拒绝国外IP/屏蔽国外IP访问服务器？ - ranriqing - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/ranriqing/p/16693099.html"), "阅读原文")
        }
    )
}
