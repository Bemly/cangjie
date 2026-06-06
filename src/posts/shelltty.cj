package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getShellttyPost(): Post {
    return Post(
        "shelltty",
        "命令行界面、终端、Shell、TTY，傻傻分不清楚？ - 腾讯云开发者社区-腾讯云",
        "2024-08-10",
        "原文待补充：命令行界面、终端、Shell、TTY，傻傻分不清楚？ - 腾讯云开发者社区-腾讯",
        { b =>
            h2(b, "命令行界面、终端、Shell、TTY，傻傻分不清楚？ - 腾讯云开发者社区-腾讯云")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://cloud.tencent.com/developer/news/304629"), "阅读原文")
        }
    )
}
