package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog735Post(): Post {
    return Post(
        "blog-735",
        "代码随想录算法训练营",
        "[https://programmercarl.com/xunlian/xunlianying.html](https://programmercarl.com/xunlian/xunlianying.html)",
        "原文待补充：代码随想录算法训练营",
        { b =>
            h2(b, "代码随想录算法训练营")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "代码随想录"), "阅读原文")
        }
    )
}
