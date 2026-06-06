package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB5pythonpython3Post(): Post {
    return Post(
        "5-pythonpython-3",
        "5本好书------Python零基础到入门必读Python书籍！ - 简书",
        "2020-02-10",
        "原文待补充：5本好书------Python零基础到入门必读Python书籍！ - 简书",
        { b =>
            h2(b, "5本好书------Python零基础到入门必读Python书籍！ - 简书")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.jianshu.com/p/171924a74dff"), "阅读原文")
        }
    )
}
