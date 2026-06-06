package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAnsiInkPost(): Post {
    return Post(
        "ansi-ink",
        "<计算机知识>：ANSI转义序列以及输出颜色字符详解 - 萧蔷ink - 博客园",
        "2024-08-10",
        "原文待补充：<计算机知识>：ANSI转义序列以及输出颜色字符详解 - 萧蔷ink - 博客园",
        { b =>
            h2(b, "<计算机知识>：ANSI转义序列以及输出颜色字符详解 - 萧蔷ink - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/xiaoqiangink/p/12718524.html"), "阅读原文")
        }
    )
}
