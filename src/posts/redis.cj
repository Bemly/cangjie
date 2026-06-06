package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRedisPost(): Post {
    return Post(
        "redis",
        "构建一个世界上最小的 Redis 镜像-腾讯云开发者社区-腾讯云",
        "2026-04-16",
        "原文待补充：构建一个世界上最小的 Redis 镜像-腾讯云开发者社区-腾讯云",
        { b =>
            h2(b, "构建一个世界上最小的 Redis 镜像-腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/article/1890124"), "阅读原文")
        }
    )
}
