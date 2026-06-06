package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog478Post(): Post {
    return Post(
        "blog-478",
        "历史上十大臭名昭著的实验，堪称惨无人道",
        "2022-03-10",
        "原文待补充：历史上十大臭名昭著的实验，堪称惨无人道",
        { b =>
            h2(b, "历史上十大臭名昭著的实验，堪称惨无人道")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1641765461192617813&wfr=spider&for=pc&searchword=731%E9%83%A8%E9%98%9F%E4%BA%BA%E5%B7%A5%E6%8E%88%E7%B2%BE%E5%AE%9E%E9%AA%8C"), "阅读原文")
        }
    )
}
