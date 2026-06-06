package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getNashornJava8JavascriptPost(): Post {
    return Post(
        "nashorn-java-8-javascript",
        "介绍 Nashorn —— Java 8 JavaScript 引擎",
        "[https://mouse0w0.github.io/2018/12/02/Introduction-to-Nas...](https://mouse0w0.github.io/2018/12/02/Introduction-to-Nashorn/)",
        "原文待补充：介绍 Nashorn —— Java 8 JavaScript 引擎",
        { b =>
            h2(b, "介绍 Nashorn —— Java 8 JavaScript 引擎")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "耗子的博客"), "阅读原文")
        }
    )
}
