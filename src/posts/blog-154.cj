package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog154Post(): Post {
    return Post(
        "blog-154",
        "为什么有人会想出卖自己的国家和民族？",
        "2023-01-31",
        "原文待补充：为什么有人会想出卖自己的国家和民族？",
        { b =>
            h2(b, "为什么有人会想出卖自己的国家和民族？")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1670668352697918505&wfr=spider&for=pc&searchword=%E4%B8%BA%E4%BB%80%E4%B9%88%E6%9C%89%E4%BA%BA%E8%A6%81%E5%8D%96%E5%9B%BD"), "阅读原文")
        }
    )
}
