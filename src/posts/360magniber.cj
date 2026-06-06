package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB360magniberPost(): Post {
    return Post(
        "360magniber",
        "360安全大脑预警：新式勒索病毒Magniber瞄准国内用户，危害程度升级",
        "2022-01-31",
        "原文待补充：360安全大脑预警：新式勒索病毒Magniber瞄准国内用户，危害程度升级",
        { b =>
            h2(b, "360安全大脑预警：新式勒索病毒Magniber瞄准国内用户，危害程度升级")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1716132412240441225&wfr=spider&for=pc&searchword=Magniber"), "阅读原文")
        }
    )
}
