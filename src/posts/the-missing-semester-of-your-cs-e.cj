package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheMissingSemesterOfYourCsEPost(): Post {
    return Post(
        "the-missing-semester-of-your-cs-e",
        "计算机教育中缺失的一课 · the missing semester of your cs e...",
        "2024-10-21",
        "原文待补充：计算机教育中缺失的一课 · the missing semester of yo",
        { b =>
            h2(b, "计算机教育中缺失的一课 · the missing semester of your cs e...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://missing-semester-cn.github.io/"), "阅读原文")
        }
    )
}
