package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog78Post(): Post {
    return Post(
        "blog-78",
        "都说“转弯让直行”？这些情况直行车负全责！",
        "2022-06-19",
        "原文待补充：都说“转弯让直行”？这些情况直行车负全责！",
        { b =>
            h2(b, "都说“转弯让直行”？这些情况直行车负全责！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1700609633531402768&wfr=spider&for=pc&searchword=%E4%BA%A4%E5%8F%89%E8%B7%AF%E5%8F%A3%E8%BD%AC%E5%BC%AF%E8%A6%81%E8%AE%A9%E7%9B%B4%E8%A1%8C%E8%BD%A6%E5%85%88%E8%A1%8C"), "阅读原文")
        }
    )
}
