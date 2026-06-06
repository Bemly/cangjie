package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog163Post(): Post {
    return Post(
        "blog-163",
        "一诚长老：人生要学会放下 知道得太多未必是件好事",
        "2023-02-14",
        "原文待补充：一诚长老：人生要学会放下 知道得太多未必是件好事",
        { b =>
            h2(b, "一诚长老：人生要学会放下 知道得太多未必是件好事")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1728863353150243766&wfr=spider&for=pc&searchword=%E7%9F%A5%E9%81%93%E5%A4%9A%E4%BA%86%E4%B8%8D%E4%B8%80%E5%AE%9A%E6%98%AF%E5%A5%BD%E4%BA%8B"), "阅读原文")
        }
    )
}
