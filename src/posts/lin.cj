package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinPost(): Post {
    return Post(
        "lin",
        "赞美招行万事达普卡！甲骨文成功下号+升级，全程丝滑！内含踩的坑点记录 - 文档共建 - LIN...",
        "2026-04-30",
        "论坛/讨论：赞美招行万事达普卡！甲骨文成功下号+升级，全程丝滑！内含踩的坑点记录 - 文档共",
        { b =>
            h2(b, "赞美招行万事达普卡！甲骨文成功下号+升级，全程丝滑！内含踩的坑点记录 - 文档共建 - LIN...")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://linux.do/t/topic/1831184"), "访问原始链接")
        }
    )
}
