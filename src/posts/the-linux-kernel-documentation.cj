package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheLinuxKernelDocumentationPost(): Post {
    return Post(
        "the-linux-kernel-documentation",
        "中文翻译 — The Linux Kernel documentation",
        "2024-08-10",
        "官方文档/工具：中文翻译 — The Linux Kernel documentation",
        { b =>
            h2(b, "中文翻译 — The Linux Kernel documentation")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://docs.kernel.org/translations/zh_CN/index.html"), "访问原始链接")
        }
    )
}
