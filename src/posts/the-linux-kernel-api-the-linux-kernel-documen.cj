package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getTheLinuxKernelApiTheLinuxKernelDocumenPost(): Post {
    return Post(
        "the-linux-kernel-api-the-linux-kernel-documen",
        "The Linux Kernel API — The Linux Kernel documen...",
        "2024-08-10",
        "官方文档/工具：The Linux Kernel API — The Linux Kernel ",
        { b =>
            h2(b, "The Linux Kernel API — The Linux Kernel documen...")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://docs.kernel.org/core-api/kernel-api.html"), "访问原始链接")
        }
    )
}
