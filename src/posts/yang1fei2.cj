package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getYang1fei2Post(): Post {
    return Post(
        "yang1fei2",
        "国产操作系统环境搭建(内含镜像资源)_yang1fei2的博客-CSDN博客_银河麒麟是基于d...",
        "2021-12-31",
        "原文待补充：国产操作系统环境搭建(内含镜像资源)_yang1fei2的博客-CSDN博客_银",
        { b =>
            h2(b, "国产操作系统环境搭建(内含镜像资源)_yang1fei2的博客-CSDN博客_银河麒麟是基于d...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/yang1fei2/article/details/120250808"), "阅读原文")
        }
    )
}
