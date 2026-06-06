package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog117Post(): Post {
    return Post(
        "blog-117",
        "阴阳师：这几个式神曾经是热门，可惜现在已经逐渐淡出玩家视线中",
        "2022-08-14",
        "原文待补充：阴阳师：这几个式神曾经是热门，可惜现在已经逐渐淡出玩家视线中",
        { b =>
            h2(b, "阴阳师：这几个式神曾经是热门，可惜现在已经逐渐淡出玩家视线中")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1604158252368137318&wfr=spider&for=pc&searchword=%E5%A5%BD%E5%8F%AF%E7%88%B1%E7%9A%84%E8%8E%B9%E8%8D%89%E5%95%8A,%E5%8F%AF%E6%83%9C%E7%8E%B0%E5%9C%A8%E7%9A%84%E5%B9%B4%E8%BD%BB%E4%BA%BA%E9%83%BD%E4%B8%8D%E7%8E%A9%E9%98%B4%E9%98%B3%E4%BA%86"), "阅读原文")
        }
    )
}
