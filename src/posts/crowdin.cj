package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getCrowdinPost(): Post {
    return Post(
        "crowdin",
        "在你的项目中使用Crowdin处理多国语言翻译-CSDN博客",
        "2024-08-23",
        "原文待补充：在你的项目中使用Crowdin处理多国语言翻译-CSDN博客",
        { b =>
            h2(b, "在你的项目中使用Crowdin处理多国语言翻译-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/qq_44209274/article/details/122413875"), "阅读原文")
        }
    )
}
