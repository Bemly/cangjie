package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinuxDeviceDriversThirdEditionLwnnetPost(): Post {
    return Post(
        "linux-device-drivers-third-edition-lwnnet",
        "Linux Device Drivers, Third Edition [LWN.net]",
        "2024-03-10",
        "官方文档/工具：Linux Device Drivers, Third Edition [LWN",
        { b =>
            h2(b, "Linux Device Drivers, Third Edition [LWN.net]")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://lwn.net/Kernel/LDD3/"), "访问原始链接")
        }
    )
}
