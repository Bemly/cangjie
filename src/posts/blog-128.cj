package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog128Post(): Post {
    return Post(
        "blog-128",
        "为什么去四川，朋友们都要喂我喝唯怡",
        "2022-09-26",
        "原文待补充：为什么去四川，朋友们都要喂我喝唯怡",
        { b =>
            h2(b, "为什么去四川，朋友们都要喂我喝唯怡")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1664689121422584848&wfr=spider&for=pc&searchword=%E5%94%AF%E6%80%A1%E4%B8%BA%E4%BB%80%E4%B9%88%E5%8F%AA%E6%9C%89%E5%9B%9B%E5%B7%9D%E6%9C%89"), "阅读原文")
        }
    )
}
