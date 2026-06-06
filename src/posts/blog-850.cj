package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog850Post(): Post {
    return Post(
        "blog-850",
        "如何复刻本网站，零氪快速建博客",
        "[https://cali.so/blog/guide-for-cloning-my-site](https://cali.so/blog/guide-for-cloning-my-site)",
        "原文待补充：如何复刻本网站，零氪快速建博客",
        { b =>
            h2(b, "如何复刻本网站，零氪快速建博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "Cali Castle"), "阅读原文")
        }
    )
}
