package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog486Post(): Post {
    return Post(
        "blog-486",
        "“联合国军”是“联合国维和部队”？连美国人都只能表示“呵呵”",
        "2022-02-26",
        "原文待补充：“联合国军”是“联合国维和部队”？连美国人都只能表示“呵呵”",
        { b =>
            h2(b, "“联合国军”是“联合国维和部队”？连美国人都只能表示“呵呵”")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1711054724833196388&wfr=spider&for=pc&searchword=%E8%81%94%E5%90%88%E5%9B%BD%E5%86%9B%E5%92%8C%E8%81%94%E5%90%88%E5%9B%BD"), "阅读原文")
        }
    )
}
