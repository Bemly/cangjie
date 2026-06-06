package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getQhxsggPost(): Post {
    return Post(
        "qhxsgg",
        "转载：水中蒸馏、水上蒸馏和水气蒸馏的区别_qhxsgg_新浪博客",
        "2021-12-01",
        "原文待补充：转载：水中蒸馏、水上蒸馏和水气蒸馏的区别_qhxsgg_新浪博客",
        { b =>
            h2(b, "转载：水中蒸馏、水上蒸馏和水气蒸馏的区别_qhxsgg_新浪博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://blog.sina.cn/dpool/blog/s/blog_4d0b510b0102w9pl.html"), "阅读原文")
        }
    )
}
