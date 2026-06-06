package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAppPost(): Post {
    return Post(
        "app",
        "外贸必收！各国客户最常用的即时聊天APP整理！",
        "2022-02-02",
        "原文待补充：外贸必收！各国客户最常用的即时聊天APP整理！",
        { b =>
            h2(b, "外贸必收！各国客户最常用的即时聊天APP整理！")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1710835874993612412&wfr=spider&for=pc&searchword=%E5%9B%BD%E5%AE%B6%E6%8E%A8%E5%87%BA%E7%9A%84%E8%81%8A%E5%A4%A9%E8%BD%AF%E4%BB%B6"), "阅读原文")
        }
    )
}
