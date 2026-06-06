package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPciPost(): Post {
    return Post(
        "pci",
        "主板诊断卡（pci测试卡）代码对照表",
        "2023-09-16",
        "论坛/讨论：主板诊断卡（pci测试卡）代码对照表",
        { b =>
            h2(b, "主板诊断卡（pci测试卡）代码对照表")
            p(b, "此链接为论坛/问答/讨论页面，非博客文章。")
            a(b, attrs("href", "https://www.zhihu.com/tardis/bd/art/619235487?source_id=1001"), "访问原始链接")
        }
    )
}
