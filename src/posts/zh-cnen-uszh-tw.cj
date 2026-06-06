package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getZhCnenUszhTwPost(): Post {
    return Post(
        "zh-cnen-uszh-tw",
        "zh-cn、en-us、zh-tw等表示语言(文化)代码与国家地区对照表(最全的各国地区对照表...",
        "2021-12-17",
        "原文待补充：zh-cn、en-us、zh-tw等表示语言(文化)代码与国家地区对照表(最全的",
        { b =>
            h2(b, "zh-cn、en-us、zh-tw等表示语言(文化)代码与国家地区对照表(最全的各国地区对照表...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.jianshu.com/p/e3ed6c9caee2"), "阅读原文")
        }
    )
}
