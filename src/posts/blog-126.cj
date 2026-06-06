package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog126Post(): Post {
    return Post(
        "blog-126",
        "网信办：重点整治饭圈互撕等价值导向不良的信息和行为",
        "2022-09-09",
        "原文待补充：网信办：重点整治饭圈互撕等价值导向不良的信息和行为",
        { b =>
            h2(b, "网信办：重点整治饭圈互撕等价值导向不良的信息和行为")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1672090958533393520&wfr=spider&for=pc&searchword=%E5%BF%83%E8%B7%B3%E6%96%87%E5%AD%A6%E9%83%A8"), "阅读原文")
        }
    )
}
