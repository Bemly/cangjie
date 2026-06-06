package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHttpsstoragegoogleapiscomtfjsVismnistdPost(): Post {
    return Post(
        "httpsstoragegoogleapiscomtfjs-vismnistd",
        "https://storage.googleapis.com/tfjs-vis/mnist/d...",
        "2024-01-20",
        "官方文档/工具：https://storage.googleapis.com/tfjs-vis/",
        { b =>
            h2(b, "https://storage.googleapis.com/tfjs-vis/mnist/d...")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://storage.googleapis.com/tfjs-vis/mnist/dist/index.html"), "访问原始链接")
        }
    )
}
