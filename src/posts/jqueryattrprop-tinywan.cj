package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJqueryattrpropTinywanPost(): Post {
    return Post(
        "jqueryattrprop-tinywan",
        "jQuery中attr和prop的区别 - Tinywan - 博客园",
        "2024-08-18",
        "原文待补充：jQuery中attr和prop的区别 - Tinywan - 博客园",
        { b =>
            h2(b, "jQuery中attr和prop的区别 - Tinywan - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/tinywan/p/5852630.html"), "阅读原文")
        }
    )
}
