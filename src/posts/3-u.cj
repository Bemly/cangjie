package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB3uPost(): Post {
    return Post(
        "3-u",
        "如何往虚拟机内传文件的3种方法 - 淳_风u云 - 博客园",
        "2021-09-17",
        "原文待补充：如何往虚拟机内传文件的3种方法 - 淳_风u云 - 博客园",
        { b =>
            h2(b, "如何往虚拟机内传文件的3种方法 - 淳_风u云 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/chun-xiaolin001/p/10285377.html"), "阅读原文")
        }
    )
}
