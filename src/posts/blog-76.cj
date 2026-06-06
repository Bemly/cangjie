package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog76Post(): Post {
    return Post(
        "blog-76",
        "古人为何把上厕所称为“解手”，这背后的典故是什么",
        "2022-05-29",
        "原文待补充：古人为何把上厕所称为“解手”，这背后的典故是什么",
        { b =>
            h2(b, "古人为何把上厕所称为“解手”，这背后的典故是什么")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1696841114444213894&wfr=spider&for=pc&searchword=%E8%A7%A3%E6%89%8Bjiecao"), "阅读原文")
        }
    )
}
