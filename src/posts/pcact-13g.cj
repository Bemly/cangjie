package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPcact13gPost(): Post {
    return Post(
        "pcact-13g",
        "PC【ACT/汉化/全动态】阿尔卑斯和危险之森 步兵汉化版+存档+提取动画【1.3G】",
        "2024-01-28",
        "原文待补充：PC【ACT/汉化/全动态】阿尔卑斯和危险之森 步兵汉化版+存档+提取动画【1.",
        { b =>
            h2(b, "PC【ACT/汉化/全动态】阿尔卑斯和危险之森 步兵汉化版+存档+提取动画【1.3G】")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://acgxq.com/archives/4714"), "阅读原文")
        }
    )
}
