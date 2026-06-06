package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHttpsstoragegoogleapiscomtfjsModelsdemoPost(): Post {
    return Post(
        "httpsstoragegoogleapiscomtfjs-modelsdemo",
        "https://storage.googleapis.com/tfjs-models/demo...",
        "2024-01-15",
        "官方文档/工具：https://storage.googleapis.com/tfjs-mode",
        { b =>
            h2(b, "https://storage.googleapis.com/tfjs-models/demo...")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://storage.googleapis.com/tfjs-models/demos/pose-detection/index.html?model=movenet"), "访问原始链接")
        }
    )
}
