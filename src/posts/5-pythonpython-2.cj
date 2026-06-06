package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB5pythonpython2Post(): Post {
    return Post(
        "5-pythonpython-2",
        "5本好书------Python零基础到入门必读Python书籍！ - 简书",
        "2021-01-22",
        "原文待补充：5本好书------Python零基础到入门必读Python书籍！ - 简书",
        { b =>
            h2(b, "5本好书------Python零基础到入门必读Python书籍！ - 简书")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.jianshu.com/p/171924a74dff"), "阅读原文")
        }
    )
}
