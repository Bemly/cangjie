package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog29Post(): Post {
    return Post(
        "blog-29",
        "小小说习作：跪　下_周海亮_新浪博客",
        "2021-12-30",
        "原文待补充：小小说习作：跪　下_周海亮_新浪博客",
        { b =>
            h2(b, "小小说习作：跪　下_周海亮_新浪博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://blog.sina.cn/dpool/blog/s/blog_4bc9df890100b053.html"), "阅读原文")
        }
    )
}
