package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog483Post(): Post {
    return Post(
        "blog-483",
        "查理九世被封禁前后的故事！背后到底发生了什么",
        "2022-01-27",
        "原文待补充：查理九世被封禁前后的故事！背后到底发生了什么",
        { b =>
            h2(b, "查理九世被封禁前后的故事！背后到底发生了什么")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1693043927062467886&wfr=spider&for=pc&searchword=%E6%9F%A5%E7%90%86%E4%B9%9D%E4%B8%96%20%E7%A6%81%E4%B9%A6"), "阅读原文")
        }
    )
}
