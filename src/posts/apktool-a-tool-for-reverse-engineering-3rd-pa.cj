package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getApktoolAToolForReverseEngineering3rdPaPost(): Post {
    return Post(
        "apktool-a-tool-for-reverse-engineering-3rd-pa",
        "Apktool - A tool for reverse engineering 3rd pa...",
        "2022-07-21",
        "原文待补充：Apktool - A tool for reverse engineering",
        { b =>
            h2(b, "Apktool - A tool for reverse engineering 3rd pa...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://ibotpeaches.github.io/Apktool/"), "阅读原文")
        }
    )
}
