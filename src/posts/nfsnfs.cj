package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNfsnfsPost(): Post {
    return Post(
        "nfsnfs",
        "nfs简介_nfs协议-CSDN博客",
        "2023-12-12",
        "原文待补充：nfs简介_nfs协议-CSDN博客",
        { b =>
            h2(b, "nfs简介_nfs协议-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/weixin_58130165/article/details/120477879"), "阅读原文")
        }
    )
}
