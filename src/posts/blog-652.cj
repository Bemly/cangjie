package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog652Post(): Post {
    return Post(
        "blog-652",
        "软件开发",
        "[https://linux.cn/article-13756-1.html](https://linux.cn/article-13756-1.html)",
        "原文待补充：软件开发",
        { b =>
            h2(b, "软件开发")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "使用 ncurses 在你的 Linux 屏幕上定位文本"), "阅读原文")
        }
    )
}
