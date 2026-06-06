package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getJavascriptmarkedjsmarkdownhtmlShmilyPost(): Post {
    return Post(
        "javascriptmarkedjsmarkdownhtml-shmily",
        "JavaScript使用marked.js在线Markdown转HTML - Shmily落墨...",
        "2021-05-01",
        "原文待补充：JavaScript使用marked.js在线Markdown转HTML - S",
        { b =>
            h2(b, "JavaScript使用marked.js在线Markdown转HTML - Shmily落墨...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.jianshu.com/p/d182ea991609"), "阅读原文")
        }
    )
}
