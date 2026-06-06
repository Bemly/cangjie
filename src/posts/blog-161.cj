package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog161Post(): Post {
    return Post(
        "blog-161",
        "代码臃肿已成常态：99% 计算机资源都被浪费掉了",
        "2023-02-13",
        "原文待补充：代码臃肿已成常态：99% 计算机资源都被浪费掉了",
        { b =>
            h2(b, "代码臃肿已成常态：99% 计算机资源都被浪费掉了")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mp.weixin.qq.com/s?__biz=MzUyNTg3OTg3NA==&mid=2247514403&idx=3&sn=599f4af3a893ffad2df7e9d8f4450b55&chksm=fa15a60ecd622f189135e5445e6d386ba505eb378364c18a117b917386a460521f5189a9e43c&scene=27"), "阅读原文")
        }
    )
}
