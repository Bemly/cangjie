package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog221Post(): Post {
    return Post(
        "blog-221",
        "成都邛崃民警半小时追回群众被骗现金",
        "2023-07-25",
        "原文待补充：成都邛崃民警半小时追回群众被骗现金",
        { b =>
            h2(b, "成都邛崃民警半小时追回群众被骗现金")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1761251937427211914&wfr=spider&for=pc&searchword=%E8%A2%AB%E9%AA%97%E4%BA%861000%E6%80%8E%E4%B9%88%E5%8A%9E%E6%8A%A5%E6%A1%88%E8%83%BD%E8%A6%81%E5%9B%9E%E9%92%B1%E5%90%97"), "阅读原文")
        }
    )
}
