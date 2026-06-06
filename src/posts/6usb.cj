package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB6usbPost(): Post {
    return Post(
        "6usb",
        "国产“迷你电脑主机”评测：搭载国产处理器，6个USB接口设计",
        "2022-08-13",
        "原文待补充：国产“迷你电脑主机”评测：搭载国产处理器，6个USB接口设计",
        { b =>
            h2(b, "国产“迷你电脑主机”评测：搭载国产处理器，6个USB接口设计")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://baijiahao.baidu.com/s?id=1694085957805437994&wfr=spider&for=pc&searchword=%E9%9B%B6%E5%88%BB%20LZX"), "阅读原文")
        }
    )
}
