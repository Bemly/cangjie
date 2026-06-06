package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTiplus50002tbPost(): Post {
    return Post(
        "tiplus5000-2tb",
        "大碗好吃不贵：致态TiPlus5000 2TB评测",
        "2022-07-17",
        "原文待补充：大碗好吃不贵：致态TiPlus5000 2TB评测",
        { b =>
            h2(b, "大碗好吃不贵：致态TiPlus5000 2TB评测")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1735055312289583728&wfr=spider&for=pc&searchword=%E8%87%B4%E6%80%81%20%E7%A7%BB%E5%8A%A8%E7%A1%AC%E7%9B%98"), "阅读原文")
        }
    )
}
