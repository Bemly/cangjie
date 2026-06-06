package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxAmdGpuFirefoxPost(): Post {
    return Post(
        "linux-amd-gpu-firefox",
        "如何在 Linux 系统上对 AMD GPU 启用 Firefox 视频硬件解码 - 影子屋",
        "2024-08-10",
        "原文待补充：如何在 Linux 系统上对 AMD GPU 启用 Firefox 视频硬件解码",
        { b =>
            h2(b, "如何在 Linux 系统上对 AMD GPU 启用 Firefox 视频硬件解码 - 影子屋")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.bgme.me/posts/2023/how-to-enable-firefox-hardware-video-acceleration-on-linux-for-amd-gpu/"), "阅读原文")
        }
    )
}
