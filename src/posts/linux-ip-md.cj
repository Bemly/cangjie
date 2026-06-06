package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxIpMdPost(): Post {
    return Post(
        "linux-ip-md",
        "如何在 Linux 中启用 IP 转发 · MD/博客",
        "2024-03-24",
        "原文待补充：如何在 Linux 中启用 IP 转发 · MD/博客",
        { b =>
            h2(b, "如何在 Linux 中启用 IP 转发 · MD/博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://www.ducea.com/2006/08/01/how-to-enable-ip-forwarding-in-linux/"), "阅读原文")
        }
    )
}
