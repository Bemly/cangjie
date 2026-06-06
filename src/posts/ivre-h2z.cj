package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getIvreH2zPost(): Post {
    return Post(
        "ivre-h2z",
        "强大的开源网络侦查工具：IVRE - h2z - 博客园",
        "2024-09-21",
        "原文待补充：强大的开源网络侦查工具：IVRE - h2z - 博客园",
        { b =>
            h2(b, "强大的开源网络侦查工具：IVRE - h2z - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/h2zZhou/p/7907875.html"), "阅读原文")
        }
    )
}
