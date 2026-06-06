package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog204Post(): Post {
    return Post(
        "blog-204",
        "华为云主机被植入挖矿，主机变肉鸡破解实录。_秋为春的博客-CSDN博客",
        "2023-05-02",
        "原文待补充：华为云主机被植入挖矿，主机变肉鸡破解实录。_秋为春的博客-CSDN博客",
        { b =>
            h2(b, "华为云主机被植入挖矿，主机变肉鸡破解实录。_秋为春的博客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_41870111/article/details/121648495"), "阅读原文")
        }
    )
}
