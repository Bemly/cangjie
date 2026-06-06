package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAutojs2Post(): Post {
    return Post(
        "autojs-2",
        "Auto.js 启动界面加相对路径图片_宴西笔记的博客-CSDN博客_autojs相对路径",
        "2022-12-18",
        "原文待补充：Auto.js 启动界面加相对路径图片_宴西笔记的博客-CSDN博客_autoj",
        { b =>
            h2(b, "Auto.js 启动界面加相对路径图片_宴西笔记的博客-CSDN博客_autojs相对路径")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_25226575/article/details/123596458"), "阅读原文")
        }
    )
}
