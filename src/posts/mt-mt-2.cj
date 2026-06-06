package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMtMt2Post(): Post {
    return Post(
        "mt-mt-2",
        "MT 语法文件开发文档 - MT官方博客",
        "2022-06-30",
        "原文待补充：MT 语法文件开发文档 - MT官方博客",
        { b =>
            h2(b, "MT 语法文件开发文档 - MT官方博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.mt2.cn/mtsx/"), "阅读原文")
        }
    )
}
