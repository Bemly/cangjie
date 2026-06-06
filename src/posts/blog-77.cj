package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog77Post(): Post {
    return Post(
        "blog-77",
        "锤子科技朱海舟称坚果手机断流大多与路由器、基站有关",
        "2022-06-15",
        "原文待补充：锤子科技朱海舟称坚果手机断流大多与路由器、基站有关",
        { b =>
            h2(b, "锤子科技朱海舟称坚果手机断流大多与路由器、基站有关")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1634947612121496394&wfr=spider&for=pc&searchword=%E5%9D%9A%E6%9E%9C%E6%89%8B%E6%9C%BA%20%E7%BD%91%E7%BB%9C%20%E5%B7%AE"), "阅读原文")
        }
    )
}
