package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog20Post(): Post {
    return Post(
        "blog-20",
        "阆风苑记_桃源故友_新浪博客",
        "2021-12-11",
        "原文待补充：阆风苑记_桃源故友_新浪博客",
        { b =>
            h2(b, "阆风苑记_桃源故友_新浪博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://blog.sina.cn/dpool/blog/s/blog_9e0f2d850101c6cv.html"), "阅读原文")
        }
    )
}
