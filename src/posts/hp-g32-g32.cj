package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHpG32G32Post(): Post {
    return Post(
        "hp-g32-g32",
        "HP G32笔记本 拆机图解_惠普g32拆机_会飞行的小蜗牛的博客-CSDN博客",
        "2023-08-04",
        "原文待补充：HP G32笔记本 拆机图解_惠普g32拆机_会飞行的小蜗牛的博客-CSDN博客",
        { b =>
            h2(b, "HP G32笔记本 拆机图解_惠普g32拆机_会飞行的小蜗牛的博客-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/dearwind153/article/details/7515637"), "阅读原文")
        }
    )
}
