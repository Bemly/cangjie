package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getQueueconcurrentqueueCPost(): Post {
    return Post(
        "queueconcurrentqueue-c",
        "关于Queue(不安全)和ConcurrentQueue（安全）的总结 - C#工控菜鸟 - 博客园",
        "2024-12-30",
        "原文待补充：关于Queue(不安全)和ConcurrentQueue（安全）的总结 - C#",
        { b =>
            h2(b, "关于Queue(不安全)和ConcurrentQueue（安全）的总结 - C#工控菜鸟 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/JingHaoYu/p/16144582.html"), "阅读原文")
        }
    )
}
