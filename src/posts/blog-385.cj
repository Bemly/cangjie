package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog385Post(): Post {
    return Post(
        "blog-385",
        "云糕盒子 (原云糕工具箱)",
        "[http://www.digiyear.tech/toolbox.html](http://www.digiyear.tech/toolbox.html)",
        "原文待补充：云糕盒子 (原云糕工具箱)",
        { b =>
            h2(b, "云糕盒子 (原云糕工具箱)")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "数字云糕 - DigitalYear"), "阅读原文")
        }
    )
}
