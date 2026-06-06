package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTermuxlinuxPost(): Post {
    return Post(
        "termuxlinux",
        "我发现了比Termux更优秀的安卓Linux模拟器！",
        "2022-07-20",
        "原文待补充：我发现了比Termux更优秀的安卓Linux模拟器！",
        { b =>
            h2(b, "我发现了比Termux更优秀的安卓Linux模拟器！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1690846932002709503&wfr=spider&for=pc&searchword=AidLearning%20termux"), "阅读原文")
        }
    )
}
