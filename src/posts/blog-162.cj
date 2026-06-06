package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog162Post(): Post {
    return Post(
        "blog-162",
        "如何减少团队的低质量代码？",
        "2023-02-13",
        "原文待补充：如何减少团队的低质量代码？",
        { b =>
            h2(b, "如何减少团队的低质量代码？")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://mp.weixin.qq.com/s?__biz=MzUxMjkwNTA4NA==&mid=2247483894&idx=1&sn=ae3d5101c43cb8304de3fadc7e3f5443&chksm=f95c1be5ce2b92f33a35511794e3b1075b537d49a7a61f35ee66e3c2efdf04ae4be7856abbca&scene=27"), "阅读原文")
        }
    )
}
