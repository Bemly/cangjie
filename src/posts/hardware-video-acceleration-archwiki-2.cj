package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHardwareVideoAccelerationArchwiki2Post(): Post {
    return Post(
        "hardware-video-acceleration-archwiki-2",
        "Hardware video acceleration - ArchWiki",
        "2024-08-12",
        "官方文档/工具：Hardware video acceleration - ArchWiki",
        { b =>
            h2(b, "Hardware video acceleration - ArchWiki")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://wiki.archlinux.org/title/Hardware_video_acceleration#Verifying_VA-API"), "访问原始链接")
        }
    )
}
