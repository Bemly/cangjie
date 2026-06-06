package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAixibm123123Post(): Post {
    return Post(
        "aixibm-123123",
        "AIX环境下升级IBM小型机的微码版本 - 小明123_123 - 博客园",
        "2024-09-30",
        "原文待补充：AIX环境下升级IBM小型机的微码版本 - 小明123_123 - 博客园",
        { b =>
            h2(b, "AIX环境下升级IBM小型机的微码版本 - 小明123_123 - 博客园")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.cnblogs.com/xmzhang/articles/17756575.html#:~:text=%E4%B8%80.%E6%9C%89HMC"), "阅读原文")
        }
    )
}
