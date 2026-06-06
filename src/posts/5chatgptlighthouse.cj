package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getB5chatgptlighthousePost(): Post {
    return Post(
        "5chatgptlighthouse",
        "5分钟将ChatGPT搬进Lighthouse - 腾讯云开发者社区-腾讯云",
        "2023-01-17",
        "原文待补充：5分钟将ChatGPT搬进Lighthouse - 腾讯云开发者社区-腾讯云",
        { b =>
            h2(b, "5分钟将ChatGPT搬进Lighthouse - 腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/2192663"), "阅读原文")
        }
    )
}
